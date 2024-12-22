Return-Path: <blinux-list+bncBC3NDNGRUAMRBLGHUG5QMGQEEUIMGEA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9ED9FA7A0
	for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 20:08:30 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-468f7e0aef7sf77872591cf.2
        for <lists+blinux-list@lfdr.de>; Sun, 22 Dec 2024 11:08:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1734894509; cv=pass;
        d=google.com; s=arc-20240605;
        b=BhMW1PDRTPwz1s8TvHv4PcxDbUUTqQxOiAFYkMRXypcY7nrN8pzroYp017DP18WxzL
         w+kZpLL+JL7FYAH7h6w3EXmCUEw7GZwGakpEJYTuY9yOnodOe3N2B3+1wRORsZU/LPzx
         E9ulUVYn2LqQ5BSpLygQ9w5l/LAXeyvN+JDfDb1mnmYR7M3f1kbM4Uh5JHZaxFCrxq+e
         5rpptpVIGt6dPo33xlse6gjTPX/PIxk9lHF+IvcnqNKISxzG0kHdHkUjey1PWNaaYpCj
         bzroqvOYYl9iojDIjGMFHwDCUJ3W43CRYrYSqTlBU4iFsyfDPz0YesaaN/lx5pjx9OQV
         zmzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=eRvqvbSYsnylK9+TFtvMUZ+QlrP28U1/UKvhSSm6ipE=;
        fh=DXEV9NRnBWu+FHCy/46MJyNOsgG0inlFXZYUkCIGvzE=;
        b=eU7MgmDNbbX2HdOeElHiwtoJ91naAPIt9oNMA1OAHcr5JomZvXTXGKXdu9uIr/JqD4
         L2K3LHZbWgctGqZCSzTDTsMG0O2R6IzVmLMgphSSfX0974oLmKpnYNVJf8XrjooVMCfh
         GI1RVKh7sxuUjkMWV/L6224OPqCC38plI+VbVuHaFnLdjbStlNKG/gVNbaqqkGSCm3KL
         57bId2WtGh3bf5q/8l+UmJ0o9UMMllOj/NklHjPGefQy2nd24AcNUTV3DZlqquXDRYgR
         7JSgN0SrJOzvVs6lXp6K8YZkGLSviR+yfSVJzszHf0rR+/UezFMwP28G2OQdjfWfYvmE
         /VMA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734894509; x=1735499309;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eRvqvbSYsnylK9+TFtvMUZ+QlrP28U1/UKvhSSm6ipE=;
        b=cG4V1jRc2RpmwdocPFzpBQbecio4RWvVE0UYspO58GhmQQ8BbmtChl7NRiP9FeP1rH
         QALhdrPYHBZdF3mTHe6a7YodHqoig+Nvu0Jdfk1q0rf/PHVfjMAmeRQtkMWe+y1nQ3Px
         Pdmto9e4KxMOJP2zUpWVmGrVaQfS+DXMonSRSApU4gDQ5NXaqGi6SUIjwZdGH8OIAKXb
         Dt2GKW0qVjA01amCBsP2q520JSkpnPtNENVNC11uWo0v8jnPhT0JJtwiyT2u/vK+YIEI
         AhgVrZGhgJwqzdLCGtmw6NwttaDE1drNo/L6nAbv4WYxWmINbtoSqVbd8GdfaWXVRMAe
         jSOA==
X-Forwarded-Encrypted: i=2; AJvYcCVfmoSDDW4dKzU4yGf53tAowHUBarpSK31Z7XkmduvvIYI6Ur1NO+IW5827P0cNESFSK7KXSg==@lfdr.de
X-Gm-Message-State: AOJu0YyBa3/+zanDJiODc5D7kOk9waZk+CO06lxOr+2vYwfDKFl/8RjL
	9XdvmVPK+GVTiCfv58HbsKKKs8ZcFcstvb+FdfBaMt4+zTUMFhYWDHUCtfplmyo=
X-Google-Smtp-Source: AGHT+IEsrxFbFNjgW8r2e5UuPTOP9/2dhH+2pYjv/mrguPppW1UThJhy4YtIjCv8LYqHRteQIpOYvQ==
X-Received: by 2002:a05:622a:16:b0:469:715:d965 with SMTP id d75a77b69052e-46a4a976c12mr183642541cf.42.1734894508655;
        Sun, 22 Dec 2024 11:08:28 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4609:0:b0:468:f965:339d with SMTP id d75a77b69052e-46a3b07bccdls55995651cf.0.-pod-prod-09-us;
 Sun, 22 Dec 2024 11:08:27 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVvCdP9WkQXydUb4IZ4QyD/9c4WxWazvriwMKPme3DvLYwQEizxdOCKHLhzQv5Vc6T17qgHlGCstKFQgQ==@gapps.redhat.com
X-Received: by 2002:a05:622a:15ca:b0:467:7208:8ee8 with SMTP id d75a77b69052e-46a4a8f1203mr150617111cf.31.1734894507787;
        Sun, 22 Dec 2024 11:08:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1734894507; cv=none;
        d=google.com; s=arc-20240605;
        b=PQLiQFyMb2cw27tE5RHfT4nzUaP2NzDAe9nCI8dFOb8IYNY9cs8eWL9COaGiXh+mZB
         iw2XpSYzC17HZkXIw7koDIJq+rFLDgpYIIWIFAnYCwg4vWyMrpn5yH9Mv8CR06zs1M2b
         gcWopE+Dxjju7WXEwXlG0SzxidtR3MzVKhEIWzRZ6aWDj1CwisO1m+gBXYG8ah6e8+8p
         Rv21ZWFVnW7CgI3euVKJe6l3i/vErAj1BLm7ES8wcfEvFxzJYGKI/sC7/ntbn42r46nm
         Tsi4dy9mVRtFlAr5ll5+ZtFjhxwmz2+jS3cYI0rPiThQ9sUcf5v4crCko0iFlNSgBdGF
         x4TQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=AUcKAkAUCM9Q23EUFSQKvNPZwvuyVaCzs5WmOaRfwpw=;
        fh=RQjsfnR5tUabX8V+ec0wC2VmtzOTVNF308wEgCxpkzM=;
        b=BiqD6On5EUy07h8YxVY+qaIdRrzhvaPnXjU7DII1Ik1qGr7+/FsqoDNt/d1NSa2pjl
         gF5rN/cV1kxmffD+6/VaNTSkq+Sy5uFkXQCl+mNk9CbcmJDI3GVBQjjpW3wGkr73iERF
         MCY5aK52+s2PJWPBMsAjP+Iqr3k14HpkkLNy945ZqvD5dJ74VcPI+ei+dkkCvWMDmSLr
         BZUUBrns0FonSZ1tqlBdO6/7njbY6Iho7idv/krHdp3c/R+cLT+WfbhKvtUyz3KlOWMN
         AuulAdLlVzIHSUHwKxOvs9dtngqNVWrc6xf1bIsU6zamQpZGJJ7sv+gR2OvfSsmdYd1H
         2ibQ==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id d75a77b69052e-46a3eb985basi99814391cf.356.2024.12.22.11.08.27
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Dec 2024 11:08:27 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) client-ip=103.168.172.147;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-178-ZRakP9VkMlia8jAz60BZUg-1; Sun,
 22 Dec 2024 14:08:26 -0500
X-MC-Unique: ZRakP9VkMlia8jAz60BZUg-1
X-Mimecast-MFC-AGG-ID: ZRakP9VkMlia8jAz60BZUg
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 54D831956088
	for <blinux-list@gapps.redhat.com>; Sun, 22 Dec 2024 19:08:25 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 4EAC93000706; Sun, 22 Dec 2024 19:08:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 4C45D3000197
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 19:08:25 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C08FE1956089
	for <blinux-list@redhat.com>; Sun, 22 Dec 2024 19:08:24 +0000 (UTC)
Received: from fout-a4-smtp.messagingengine.com
 (fout-a4-smtp.messagingengine.com [103.168.172.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-275-74-iqQQRNEybajN2kZTrNA-1; Sun, 22 Dec 2024 14:08:22 -0500
X-MC-Unique: 74-iqQQRNEybajN2kZTrNA-1
X-Mimecast-MFC-AGG-ID: 74-iqQQRNEybajN2kZTrNA
Received: from phl-compute-11.internal (phl-compute-11.phl.internal [10.202.2.51])
	by mailfout.phl.internal (Postfix) with ESMTP id 2CAB413800E9;
	Sun, 22 Dec 2024 14:08:22 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-11.internal (MEProxy); Sun, 22 Dec 2024 14:08:22 -0500
X-ME-Sender: <xms:pWNoZw-LHplhyOoWyFn-Aql8Grlzo0p1rmTT9-agdYJd0AF7ttLzfw>
    <xme:pWNoZ4vLuh7BJh-1GtH3ifOi2JVIIoPg5hXoUuNPla-CHaGZgW2PzCvcwHyTZfnmp
    Up3rTa0d9iy5eoXqgI>
X-ME-Received: <xmr:pWNoZ2Dk6w1gs5V1Y9t7Oglk0KxmjSSPA23ha0naMWpFEnVVRvpu9PWDVQZEGGQurFIzWUJjSMmf0xO6Qr4NwXvtEZbd9L4vu_A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddruddtkedguddvtdcutefuodetggdotefrod
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
X-ME-Proxy: <xmx:pmNoZwfpAepITF1tf1GvATlYmhALZP9wfLjPU48jUZmykFvVsdK9aQ>
    <xmx:pmNoZ1NG5HprbJJw4eOZiVtsCrVHohsemuYQa1admec6k8LRQofBNA>
    <xmx:pmNoZ6kfy7m3z1o2kliAvsexH_5ztlS5rksgo2tfL2Aluvy5VYs7TA>
    <xmx:pmNoZ3viV8oqv_tsVKdB55WQXAKIgE42oeNdzRxO_3cgsvl_4-tr9A>
    <xmx:pmNoZ2px7os-S-JokrlR_MmZvmb3K_v_UParZ1BShbfnJzA4BwunM8TD>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 22 Dec 2024 14:08:21 -0500 (EST)
Date: Sun, 22 Dec 2024 11:08:18 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: =?ISO-8859-15?Q?Elias_St=E5hlberg?= <elias.stahlberg@harrastenurkka.fi>
cc: Jude DaShiell <jdashiel@panix.com>, blinux-list@redhat.com
Subject: Re: youtube issues
In-Reply-To: <83ee3424-237f-4b94-b2cb-321c0b970487@harrastenurkka.fi>
Message-ID: <f2177cfc-208e-2c42-95ce-5f1228072af8@hubert-humphrey.com>
References: <Z2hB3hnS-T8uW2DC@panix.com> <6ba1cbf7-785a-481a-9c6f-61ca5dd3926e@harrastenurkka.fi> <10ee4d61-9bcd-61aa-8578-84dd82ab5192@hubert-humphrey.com> <847034b0-145a-4b49-aec2-aef2e3c4abb6@harrastenurkka.fi> <76aabaee-2e97-71d9-e903-c9eab07fbca4@hubert-humphrey.com>
 <83ee3424-237f-4b94-b2cb-321c0b970487@harrastenurkka.fi>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: nHUdKQvr5SHmYlkY-KGHBVBa12zkMe_wLm-yEcuFhZQ_1734894502
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: fCdgUThsjP99e0tG2wanYxOETMS3_GIgjdIvhgK_wNc_1734894505
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted
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

Well Elias, then I will remove freetube, but it was a nice try. I am in Debian 
SID, useing mpv to play lots of formats with currently 3 out of 4 working 
sound-cards. On a laptop I also have graphical, including Brave, I38, and ORCA, 
but I mostly will go there as a last resourt or for Zoom meetings.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

