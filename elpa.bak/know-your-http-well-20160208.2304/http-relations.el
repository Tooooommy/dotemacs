;;; http-relations.el --- Look up the meaning of HTTP relations
;;
;; This file was automatically generated by
;; https://github.com/for-GET/know-your-http-well
;;
;;; Commentary:
;;; Code goes here:

(defconst http-relations
  '(("about" ("Refers to a resource that is the subject of the link's context."))
("alternate" ("Refers to a substitute for this context"))
("appendix" ("Refers to an appendix."))
("archives" ("Refers to a collection of records, documents, or other materials of historical interest."))
("author" ("Refers to the context's author."))
("bookmark" ("Gives a permanent link to use for bookmarking purposes."))
("canonical" ("Designates the preferred version of a resource (the IRI and its contents)."))
("chapter" ("Refers to a chapter in a collection of resources."))
("collection" ("The target IRI points to a resource which represents the collection resource for the context IRI."))
("contents" ("Refers to a table of contents."))
("copyright" ("Refers to a copyright statement that applies to the link's context."))
("create-form" ("The target IRI points to a resource where a submission form can be obtained."))
("current" ("Refers to a resource containing the most recent item(s) in a collection of resources."))
("describedby" ("Refers to a resource providing information about the link's context."))
("describes" ("The relationship A 'describes' B asserts that resource A provides a description of resource B. There are no constraints on the format or representation of either A or B, neither are there any further constraints on either resource."))
("disclosure" ("Refers to a list of patent disclosures made with respect to material for which `disclosure` relation is specified."))
("duplicate" ("Refers to a resource whose available representations are byte-for-byte identical with the corresponding representations of the context IRI."))
("edit" ("Refers to a resource that can be used to edit the link's context."))
("edit-form" ("The target IRI points to a resource where a submission form for editing associated resource can be obtained."))
("edit-media" ("Refers to a resource that can be used to edit media associated with the link's context."))
("enclosure" ("Identifies a related resource that is potentially large and might require special handling."))
("first" ("An IRI that refers to the furthest preceding resource in a series of resources."))
("glossary" ("Refers to a glossary of terms."))
("help" ("Refers to context-sensitive help."))
("hosts" ("Refers to a resource hosted by the server indicated by the link context."))
("hub" ("Refers to a hub that enables registration for notification of updates to the context."))
("icon" ("Refers to an icon representing the link's context."))
("index" ("Refers to an index."))
("item" ("The target IRI points to a resource that is a member of the collection represented by the context IRI."))
("last" ("An IRI that refers to the furthest following resource in a series of resources."))
("latest-version" ("Points to a resource containing the latest (e.g., current) version of the context."))
("license" ("Refers to a license associated with this context."))
("lrdd" ("Refers to further information about the link's context, expressed as a LRDD (Link-based Resource Descriptor Document) resource. See [RFC6415](https://tools.ietf.org/html/rfc6415) for information about processing this relation type in host-meta documents. When used elsewhere, it refers to additional links and other metadata. Multiple instances indicate additional LRDD resources. LRDD resources MUST have an application/xrd+xml representation, and MAY have others."))
("monitor" ("Refers to a resource that can be used to monitor changes in an HTTP resource."))
("monitor-group" ("Refers to a resource that can be used to monitor changes in a specified group of HTTP resources."))
("next" ("Indicates that the link's context is a part of a series, and that the next in the series is the link target."))
("next-archive" ("Refers to the immediately following archive resource."))
("nofollow" ("Indicates that the context’s original author or publisher does not endorse the link target."))
("noreferrer" ("Indicates that no referrer information is to be leaked when following the link."))
("payment" ("Indicates a resource where payment is accepted."))
("predecessor-version" ("Points to a resource containing the predecessor version in the version history."))
("prefetch" ("Indicates that the link target should be preemptively cached."))
("prev" ("Indicates that the link's context is a part of a series, and that the previous in the series is the link target."))
("preview" ("Refers to a resource that provides a preview of the link's context."))
("previous" ("Refers to the previous resource in an ordered series of resources. Synonym for `prev`."))
("prev-archive" ("Refers to the immediately preceding archive resource."))
("privacy-policy" ("Refers to a privacy policy associated with the link's context."))
("profile" ("Identifying that a resource representation conforms to a certain profile, without affecting the non-profile semantics of the resource representation"))
("related" ("Identifies a related resource."))
("replies" ("Identifies a resource that is a reply to the context of the link."))
("search" ("Refers to a resource that can be used to search through the link's context and related resources."))
("section" ("Refers to a section in a collection of resources."))
("self" ("Conveys an identifier for the link's context."))
("service" ("Indicates a URI that can be used to retrieve a service document."))
("start" ("Refers to the first resource in a collection of resources."))
("stylesheet" ("Refers to a stylesheet."))
("subsection" ("Refers to a resource serving as a subsection in a collection of resources."))
("successor-version" ("Points to a resource containing the successor version in the version history."))
("tag" ("Gives a tag (identified by the given address) that applies to the current document."))
("terms-of-service" ("Refers to the terms of service associated with the link's context."))
("type" ("Refers to a resource identifying the abstract semantic type of which the link's context is considered to be an instance."))
("up" ("Refers to a parent document in a hierarchy of documents."))
("version-history" ("Points to a resource containing the version history for the context."))
("via" ("Identifies a resource that is the source of the information in the link's context."))
("working-copy" ("Points to a working copy for this resource."))
("working-copy-of" ("Points to the versioned resource from which this working copy was obtained."))
("blocked-by" ("Identifies the entity blocking access to a resource folllowing on receipt of a legal demand."))))

;;;###autoload
(defun http-relation (relation)
  "Display the meaning of an HTTP relation"
  (interactive
   (list (completing-read "Enter HTTP relation: " http-relations)))
  (let* ((lowercased-relation (downcase relation))
        (found (assoc lowercased-relation http-relations)))
    (if found
        (let ((description (car (cdr found))))
          (message
           "%s - HTTP relation\n%s"
           lowercased-relation (car description) ))
      (message "%s - HTTP relation\nUNKNOWN" lowercased-relation))
    ))

(provide 'http-relations)

;;; http-relation.el ends here
