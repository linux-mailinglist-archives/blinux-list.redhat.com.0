Return-Path: <blinux-list+bncBC3NDNGRUAMRBBNNUG5QMGQE7YCF73A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA339FA78B
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 19:12:23 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-467944446a0sf58336301cf.1
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 10:12:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734891142; cv=pass;
        d=google.com; s=arc-20240605;
        b=Y61Eah4zTpup+0c1d0TX+E//B4VWKimTF64/EcQXfXoJBWE7Krm4nYYAg2Yy3cTKQU
         Rr26nVUvtDMD8Y96oYtlm3QKNeI5Zv3fSsuuvldFhERGNCRU8l5ZmHVUz6KgKFbl88go
         r2N/wvbSEmZRVFIgjGaIB6c+DKafy7sDn+YcnWKxzIIny6XRqrP4rieo+LRuhW5R1Sf/
         itre/jCt2Js3l8Ay8zh8IfiMm7Fy5uRlDfeAg9g+EHAZMmKVtW/xRCPo9/yapnOouyRO
         tSALtpJe1UCLJOr2Iw4C7uxkfu4/ulNWKxXFsUmw+nSXFX1N53mL8i82YwRXnSZUlUdY
         bd6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=favAeFAoEF8crQA7ll7p47OnAmXgTvwCmKMu3rHFjZs=;
        fh=7h5kzr434WIflJfd921lyyqlVk/GVA+Vl4GVIf1RSOE=;
        b=S9MA7jCAbJLi8z9YY0nLrAD7DwtAl8Eccj0JmRFKdOw7C+rchkWjvkV6HkYWtyqBG5
         k8EAiz1KZHzJn3vdPUcFMHgovRapRURkY71hFTS/7WTwVmV9gPdQp8+HGShQEFoG12VX
         06j5yv2LNBtZaSfsgbL6HYgq0np/B7TzpF0r+1OgNLFeVDhpzou92RvfDo572tXroVZ5
         fsBWuRD0dsrwobNqNzkDZKDHT2vasQBFR6VLJM5pwedQlwDWCuezEoQiy8uzt2S9nguq
         ZYiuaQHrrssxsGyTtOkhKCZ/+MTbtXCHVNRBVxPiVisqGZoeVetgwjWArYrNBhRZz1J/
         IbTQ==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734891142; x=1735495942;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=favAeFAoEF8crQA7ll7p47OnAmXgTvwCmKMu3rHFjZs=;
        b=T/iNWqNL1sE28Hh+VtJPdmkIDGFTsVi49BRznQ9EB3jKeYxtjOSfcRUyr2OC6lqXb6
         H3w426ziJzaJJKiBBLt2JrzO7U/OBRABfz3q8HnLWXlkiWocXrnspawvcuS9Za47GKNh
         FX2W1ROvdOio2LfF90w6wJifmxdke66jZO4Se7BG6XBvT725CjA4051ZGUKe2PWWgykx
         m4wd5r9lt0h4N+88fkDENqVNl+3DLeraQGHaO5RI2D7nELc60q5aqKXI9l23pQBecfbA
         kjckVLyTrIBvIjOlOhvvBlGGjSaQ3HBLBqk0/0K8B7qGzBuUaRjqjsZGznhhHIpmLM/R
         pYsA==
X-Forwarded-Encrypted: i=2; AJvYcCWl/YQmv4bdrOgnDcaTsOIrR3lBscjlfJ/mWgVuq+Dxy4hZSuS+N2fVRbPnF+uEEcMyQirVGw==@lfdr.de
X-Gm-Message-State: AOJu0YxXZfdO9N7xKgr9PQbx5LUmgjuVhAd8kEGOAGcxq4MqXcn3D3lU
	05VDQmG95OZy111B1QoZG6hYeipMT8huDHtV4fa6811ToD/arfUR69JnUBuKWdo=
X-Google-Smtp-Source: AGHT+IHvqWGOIy69hGq1U3GbQq2bmtF+3rrTiPYuYq9O/k107yxFJCNrG4ZywWPNYXX+83fhQjm2yQ==
X-Received: by 2002:ac8:5f11:0:b0:460:a928:696f with SMTP id d75a77b69052e-46a4a8e7199mr176951471cf.29.1734891141919;
        Sun, 22 Dec 2024 10:12:21 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:f9d1:0:b0:6d9:86b:cc0c with SMTP id 6a1803df08f44-6dd1549dc3dls55327216d6.2.-pod-prod-05-us;
 Sun, 22 Dec 2024 10:12:21 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVMXsvqFcRQ+lSiqoNCp/s+D7tgs6uhJK/ZiRRH45jXa9z85rtq+5WjUewVUc1mHXUAaMLyZ5Je2VuAWw==@gapps.redhat.com
X-Received: by 2002:a05:6214:250e:b0:6d8:a84b:b508 with SMTP id 6a1803df08f44-6dd2333ae04mr158554906d6.12.1734891140831;
        Sun, 22 Dec 2024 10:12:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734891140; cv=none;
        d=google.com; s=arc-20240605;
        b=dloXeaQMlrCCNa4ZZEfQaVLetw71oV+NVvjsdHp5r3aiDBbBPUvQZGrCEgXmsD4dPX
         VX/7fzUHLk3DcBRzF4ItyVbJtf+hLt+j/BbdBqGrfu0nGV1D1PzKJYoYHyRQYOfbLPdT
         IChpqw1+qm8Cxa+KZ9R1/xmvPPfg3VbNCjKixwFV3oNwWuaiKKqaJzJskbqMJbS06EUc
         Qz1TF2xxjtJUjviFJ9ZVKJ9wutl+zcaOVUcynsqF25HcdJA5ETSU/TXYii44CLKQrdtl
         S5f7v3j1auOeut0D1zs7UnMQau6WVGV2cvHaZwulefwtpqA6cAuorz97n20s77NDrgQw
         kO9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=99eVQHzrVvjcOgXFYYXxParQgTrcsQhGGFYP6UYE/nk=;
        fh=RQjsfnR5tUabX8V+ec0wC2VmtzOTVNF308wEgCxpkzM=;
        b=ZvZeaJiETsM7lWEJ8Y6HTGd1MqaU3utaCdiqBFhoJgyc3EEbEMr0bxTTTAkcGdTAwR
         9YlBO5vrYOtEELbJnN5uwCMPujkg150joSQO+RikHOMWN6rDEAo1NTfRZ6N9pUgZO2vL
         ex4IzibdCGZCDr8XtgjlXgRMiVig8yzw0kRM59Mvq02mpcff/bcXQ/9fu8wN2GQao1AO
         2H1pnHC3z0alBNkeFC6QhCx440/2T8vYFa7PomiQqNojSbSvL7msJiHG/KUX4Se3UHkI
         Vqss+eEHnLdlgDTtGwf+aQUDVBA2IfuJUXENSDFFMQEKMqq1SD/QHzKmfgMy9S3GzP/5
         zKrw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3e685b9fsi97155861cf.104.2024.12.22.10.12.20
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 10:12:20 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted sender) client-ip=103.168.172.158;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-619-umcrwMD6OC6rqKp9txl0Tw-1; Sun,
 22 Dec 2024 13:12:19 -0500
X-MC-Unique: umcrwMD6OC6rqKp9txl0Tw-1
X-Mimecast-MFC-AGG-ID: umcrwMD6OC6rqKp9txl0Tw
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 840CC1956087
	for <blinux-list@gapps.redhat.com>; Sun, 22 Dec 2024 18:12:18 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7DAA11956053; Sun, 22 Dec 2024 18:12:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7B0691956052
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:12:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id F154D19560A5
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 18:12:17 +0000 (UTC)
Received: from fhigh-a7-smtp.messagingengine.com
 (fhigh-a7-smtp.messagingengine.com [103.168.172.158]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-617-_Cw0XXd2MDWKubjtO4-Jgw-1; Sun, 22 Dec 2024 13:12:15 -0500
X-MC-Unique: _Cw0XXd2MDWKubjtO4-Jgw-1
X-Mimecast-MFC-AGG-ID: _Cw0XXd2MDWKubjtO4-Jgw
Received: from phl-compute-06.internal (phl-compute-06.phl.internal [10.202.2.46])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 3A0541140114;
	Sun, 22 Dec 2024 13:12:15 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-06.internal (MEProxy); Sun, 22 Dec 2024 13:12:15 -0500
X-ME-Sender: <xms:flZoZ_W6Bum3JSDuvbrMzin6jkIeVSvdGaFJ65VYm3fns7qWZ_SNWg>
    <xme:flZoZ3nUp1thvUY16f7N7Iw1_ktBE_jm9Jeh2j_y95t6EUMPJxSSeEmdBuUIQboZb
    rGOCAEw7O7JS0uqDIw>
X-ME-Received: <xmr:flZoZ7aFRpQeQNnAlrAhEOGezmyTNtcdVci3iCvyzWxwkJjPY2TXSUOVHzqOfYaRPyCqMVRVW9vxe1DPcw0Zbs4J1JNfLlFmkOw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddruddtkedguddtlecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvden
    ucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeei
    vdekkedvteeuveeufeeffffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgv
    hidrtghomhdpnhgspghrtghpthhtohepfedpmhhouggvpehsmhhtphhouhhtpdhrtghpth
    htohepvghlihgrshdrshhtrghhlhgsvghrgheshhgrrhhrrghsthgvnhhurhhkkhgrrdhf
    ihdprhgtphhtthhopehjuggrshhhihgvlhesphgrnhhigidrtghomhdprhgtphhtthhope
    gslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:flZoZ6Xe09qspACnYRw08iydWL86oF_CL293G7fmg_892TZrwyrdQg>
    <xmx:flZoZ5nOnRiZmbRwDlFPn14HHTMgOIzJcqERMvYScaNrMM00pGrCEw>
    <xmx:flZoZ3cJweb3vZWub-pS7Y-1TIW9A4rT7WnQhjzed1HE0-L2VyG2Gg>
    <xmx:flZoZzGDAw0EDbAzBhbEdiV_5KDktXDLJrX9zjDXJxrx7pa-s0Ws8w>
    <xmx:f1ZoZ_iGntAd6clsdl4YbhPKnNJwugmPZzPY668gK4JCJ21Q4ZSPpyKD>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 22 Dec 2024 13:12:14 -0500 (EST)
Date: Sun, 22 Dec 2024 10:12:13 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: =?ISO-8859-15?Q?Elias_St=E5hlberg?= <elias.stahlberg@harrastenurkka.fi>
cc: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
Subject: Re: youtube issues
In-Reply-To: <6ba1cbf7-785a-481a-9c6f-61ca5dd3926e@harrastenurkka.fi>
Message-ID: <10ee4d61-9bcd-61aa-8578-84dd82ab5192@hubert-humphrey.com>
References: <Z2hB3hnS-T8uW2DC@panix.com> <6ba1cbf7-785a-481a-9c6f-61ca5dd3926e@harrastenurkka.fi>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: hCil304WwepYgwrEkbV1F6EC3Stxj63qyvl4ils20CY_1734891135
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: JFxQynyJWezNu7o1QyuvKrV4h5lMVQ9tyOQg9nhWC10_1734891138
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.158 as permitted
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

Well, thank you Elias, I downloaded-and-installed a Debian version, but I get a 
seg falt when running it. Makes some reference to x11.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

