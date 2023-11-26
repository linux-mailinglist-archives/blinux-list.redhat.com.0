Return-Path: <blinux-list+bncBC3NDNGRUAMRB5FBRSVQMGQEWUDF2LA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-vk1-f199.google.com (mail-vk1-f199.google.com [209.85.221.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 21B267F9200
	for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 10:33:42 +0100 (CET)
Received: by mail-vk1-f199.google.com with SMTP id 71dfb90a1353d-4ac34ddfb8asf1333094e0c.1
        for <lists+blinux-list@lfdr.de>; Sun, 26 Nov 2023 01:33:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700991221; cv=pass;
        d=google.com; s=arc-20160816;
        b=y8+/ipOKFyomW6hDfHbHnYGpBg2YdfuDXz2piwTbQB7MuA7ntH638M/+XvzRaQl5TQ
         QGBfjZX4Aq7mdCBwUU3aiRNUgG4ipjBBjl8ZggQLH/96QI+SXic4bhjjpwAAdoxnKAFU
         GkKkuq6M/evLOW4dKCILdlTd0g08FVCTR3aLqtQe1iCsgFsdjH4T9IXAtvZzpGjyxIC4
         b6PEpzaFG9SWiyagtfcWHJbhwI1g2+vcDu+FgJZl/ANFAqqjgaM2VDgMnOJ4PIxXx4eK
         ety7ciJDzmjo/iCMMpbBQGYC01V+Y148srHg23BiQc0nq2kgiiDOynIIKO5y8xKMmJvf
         BdKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=sxJ3lYODuOxf6oGZiwByRRFb11fJxxlqTnRdMiHnwfg=;
        fh=KMVp+TbGtKVD322h6kz+6FYaExctaXxn0Lhb/1izxxY=;
        b=FXFv+QfYH2JcTttpK6SkFtV0/fFwemPxtGiqnDUSGXriuLtoAD31LLYujdyaOIXb1I
         JUBewLrqlY6x2g+g19Sd2h/xkVes4g2pDbiRSEOpCDVBLYu9+Umsh3A3MDBxcVSLmxxa
         LzuyC8sSpyZ2MnP/2mMvHLVIj+N3tVpsRmfYi3GIKJF6CyIu2qGL8+t1iHagK3POgJh9
         OMBgrTJfMcQc0A2+/CmW+k1FE3E1Wdabrij7FIGg5+5ji2iPNuMijvd7Z32PwQukHJqH
         WX4JpaFQ3OXxGSnXgy4MBXzrXj7oL3tbw8wcou+4GGbU0DDtZuWTIkbIRQvHW1pzCZ8y
         +c3g==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700991221; x=1701596021;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=sxJ3lYODuOxf6oGZiwByRRFb11fJxxlqTnRdMiHnwfg=;
        b=BrknQtlokWo/ZZfmNX9KypWGZ96yEDIlLIDsyIbp1uBVLuyAe8nmL/TqsW/Rau2LOu
         AZPVgXMrKFAqmVp0PLzrdturyxpG5m2Hb+TuYrzE3nM/bA+GF0rAxBQ8SI7pmN8tGa98
         Mgv03keASB072drB+vbKE6OGSgQncMtj9MMeC+PQxiNqsnpvZYoIAY89L84cht4CiaPC
         MFjT+eT56g5oUfZvp4rJaQ3fW5ebKD9WVghZH2LqtlZYOaIHuw6qHqyaXHSy29wfqje/
         qeW1K2gzy63IQH5T1ov+d+jKkGAawCuCKc1VJ8VvKRx19krhwsBSgfBy2cAlF4bsFu2b
         9WLw==
X-Gm-Message-State: AOJu0YxMm+dRmRdfWWwI+Y1gkI/AKjLvdsAwLS2obNR9R8Ro5DjMfS4y
	oBIpsqACnBQ0kOMgNxx2n71IRw==
X-Google-Smtp-Source: AGHT+IGyXtw1GudXU3T6BD1JnR6hrhf27HZbBzxpmPEbrEKqFGkhKQ+KOvm72ZiUWKLbhhsrdHIt9A==
X-Received: by 2002:a05:6122:1d45:b0:49c:b45:6cba with SMTP id gd5-20020a0561221d4500b0049c0b456cbamr7999219vkb.12.1700991220817;
        Sun, 26 Nov 2023 01:33:40 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1c0f:b0:423:9554:656a with SMTP id
 bq15-20020a05622a1c0f00b004239554656als710422qtb.1.-pod-prod-09-us; Sun, 26
 Nov 2023 01:33:40 -0800 (PST)
X-Received: by 2002:ae9:ee12:0:b0:77d:7493:25ae with SMTP id i18-20020ae9ee12000000b0077d749325aemr7719258qkg.53.1700991220300;
        Sun, 26 Nov 2023 01:33:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700991220; cv=none;
        d=google.com; s=arc-20160816;
        b=N9fSHGwQsdu1RvE4OrzpPIdBSS1n2dZfK9IC8yCPr75OfJmgNfSDgU2pv8P3UK02xx
         RwSSgoOkHUZucnpEAF8dAUigPlrU8090FWcK7LEJdEIltAS5PES0j9YpigzZK7crw+Kk
         2gYDdiYbcEF59NtdCBsAfbQ7LNRg/PSKbK7x0z+oYvV7iI5dkdu/hkimT647nabBrJYy
         USaHbCaZcIW3BOyrTq7qodfh+FBFoprwARiQ9raRWyIZMMVQothT18ZTMS5Ggzr+qW0W
         Qqf/W3+GFpzOB+s7eOZiTLYrm+CmCC6WGyS0Lt1D9hxlT0Uxa00cQNRSH+4KhYBSYBNV
         O0rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=db6B4GH+PY4DDs/YBpOmtl8UOpYyngevbfbZiZ+XjGw=;
        fh=KMVp+TbGtKVD322h6kz+6FYaExctaXxn0Lhb/1izxxY=;
        b=iIuXCaunhkZG4F3LBqDZSSkACRtas8/5H+JPPNwWGRNU2KeARDKjoNn3ZubrcIkO2y
         ++oNsDDKwxUXdxLhqzfkQXRLFC9U9ZXUOyn+YgsovLHMzQJPA+4a0RLn08A0cVjWrevr
         TCBHtzcwxeAz6q49UyE64xuyVVivRcGXf4bWOwjeG64CmlLYDmBJr4j4wT104Q+l9p1I
         GG9/6BGV5xdPcr/ZeifAInnalEyG3JDcuVVp0KGq+wCpty8/7Rf1Wp21nO+M5o91+ore
         JmLwzNJNe8sGBSIwWyL/KAfjUk2xULEhQqw+jlWI+c+fq+QY5w3GAJHz5tvK5qJz8zs7
         2YqA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id bk39-20020a05620a1a2700b00777045734c4si7013717qkb.560.2023.11.26.01.33.40
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 01:33:40 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.29 as permitted sender) client-ip=66.111.4.29;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-668-YKkQqjbKPiayGQv4b8-pxA-1; Sun, 26 Nov 2023 04:33:38 -0500
X-MC-Unique: YKkQqjbKPiayGQv4b8-pxA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 381C3828B20
	for <blinux-list@gapps.redhat.com>; Sun, 26 Nov 2023 09:33:38 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3417B5038; Sun, 26 Nov 2023 09:33:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2D0605028
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 09:33:38 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F0A1C1C04326
	for <blinux-list@redhat.com>; Sun, 26 Nov 2023 09:33:37 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-81-WHdhgejcMPWM1AcV0dzXaw-1; Sun, 26 Nov 2023 04:33:36 -0500
X-MC-Unique: WHdhgejcMPWM1AcV0dzXaw-1
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id B67C15C016A;
	Sun, 26 Nov 2023 04:33:35 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Sun, 26 Nov 2023 04:33:35 -0500
X-ME-Sender: <xms:7xBjZcattPyFUYPEIhxY6PmkextHHy7MWsiUgNKrosa6FtYzdQCQoQ>
    <xme:7xBjZXb9ixvWniH09z9lpQXBic-Fh_3T9QQiyY8p3K4FXHEsME7PbKp__g33u36VW
    XLeGqQJ4W6pj--thNY>
X-ME-Received: <xmr:7xBjZW9He3Rdsdm0nT-QDe2xxVuBbLHWdDHliDRIKQpkSX0K087kqnBlnpa3r9X9dGYkzhKEZKJMqIlI1VsFYFsm9XqYinrjsQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudehledgtdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecuhfhrohhmpeevhhhimhgv
    ucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhmqeenuc
    ggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedvkeekvdetueevueeffeff
    ffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfh
    hrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgihrdgtohhm
X-ME-Proxy: <xmx:7xBjZWqQ4rvElCYpR21BHCU8DEEaxPQoajhqPlaaACveqAIYVVqDEw>
    <xmx:7xBjZXp9MtfQ-1bvw5TvyaGm5TuJsvpLQfYVFPX4EERQt9WG7PKOyw>
    <xmx:7xBjZUSlmfa_QwozdEURRQ-DdTBnvM97SyC7Wl2A_Py0hAsgtetRzg>
    <xmx:7xBjZWRDmgE4rQBBJ3CsFJ9WnrO33t4ut4Jy5y5Q0aKvRmnlF8cPdA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 26 Nov 2023 04:33:34 -0500 (EST)
Date: Sun, 26 Nov 2023 01:33:32 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: john doe <johndoe65534@mail.com>
cc: blinux-list@redhat.com
Subject: Re: EmacSpeak Won't Compile
In-Reply-To: <6bf8ba7f-791b-42eb-be07-b5ffcdbd24df@mail.com>
Message-ID: <48dceacc-d428-75c1-edc5-341bf7d2c8d6@hubert-humphrey.com>
References: <a197aa90-4838-da18-cc46-44c0ec519c19@hubert-humphrey.com> <6bf8ba7f-791b-42eb-be07-b5ffcdbd24df@mail.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 66.111.4.29 as permitted
 sender) smtp.mailfrom=chime@hubert-humphrey.com
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

HI John: In either case the sequence as well as an outcome are exactly the 
same. Thanks for a first reply.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

