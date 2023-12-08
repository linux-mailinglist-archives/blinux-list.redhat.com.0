Return-Path: <blinux-list+bncBC3NDNGRUAMRBW7KZWVQMGQEEMZJS2A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A6CE80AD6B
	for <lists+blinux-list@lfdr.de>; Fri,  8 Dec 2023 20:58:21 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4258d33d5f4sf22339181cf.3
        for <lists+blinux-list@lfdr.de>; Fri, 08 Dec 2023 11:58:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702065500; cv=pass;
        d=google.com; s=arc-20160816;
        b=XArlpmYd/hCTG8wrPwidvGbhIIC5GZkodI8jmMIwpAlOyH7Vz26yNDq+SgeMJAKXIW
         pP8QGWCzjGAYwahV8P6w4PH8KLPLgyGkv/orqWN2UhdIwWQjX0wckW70syACHoTevUn3
         10xIwmBM14blSkV8n+4ys603TwSiesc0/Yv8r+wybVLUlxX7wwST3TNztaG1F2BPPIxu
         3m2BH7xFUmjX5FrGR7GGuBCRFV4hTO7L91iZt0ZSDnnIjmPYGUlRfz2IJ1pefcxPwuXi
         G11oB0+peEI+cq7qt+PVMWV+E7mzfVaPDoNRIlziea5LZE2Nv4roNYtPXs4t1EwvY9NJ
         eRJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=Tf1pZx3lkzXkkl7+wC5PffPgw7UFSGaMxpZZGl+DRAs=;
        fh=dySJoaI0YIg8lBdVIj5InnGto4jopuxePvx29Zt5bFo=;
        b=oaTvnX75FxoPWng21/OyJNtjzg0Kqh1rWDgIkVX6M67MAIHjP+/VAvRNzp124OMPss
         8QyyF4/xHWyy9tDJmDtXhbLeLt1RNVrQhciHELX4imkbNRyl4PUfLWIsI0yERwaFi/0b
         4Qvd2nmsrKuAM5kqJtmP6kUpDOYQEPe4jJ/rAGzoATldo7DaO7tTnMyBaGjbhk0sfNMC
         kfPz0BEkqRYKXn63DpLziPeX/rkAs0wJqc8az3+lfMLx3qgd2zvAS+4UH7Lfxsp+MVsA
         gNDkj2iloZO2lhRwG8Ml+a/hi6G7GRBBidyvMexJrQwKv3Qb0Fyx5rghqy4lZKKZenDB
         Gaew==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702065500; x=1702670300;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tf1pZx3lkzXkkl7+wC5PffPgw7UFSGaMxpZZGl+DRAs=;
        b=iUlag1cKKOl/HmBU2Mcegy9VM7T8cqq1uGDb+DYiIlsZLjuqaLcyBZa8My8e06wGbq
         RewKo1ZGKxIE3dIqEMsEIGur6gTQdViimZwyMPsddpeTc3Ee/gcvvK6ZKbukd/9+dP5A
         yxedSGvWbf2m4b47KLqrQmwPV2VK6hAsAwW2NJLqrsuFNd4HYOwY56XOMq9e63PsJhgQ
         uLhmoEBWkeO6OS4wUmrALBwME1ofpWcU1mfd5IND/vfcCtqw5CsHYErKFLNyV7Vo0SZE
         pVtAFtrr/0zR3xEvseZfU76CwD0vRmJ+Ls5hRIFRdlg4j+DLtAvrOuXUADDYH2XengnE
         KLYg==
X-Gm-Message-State: AOJu0Yz2HrNfQ/4L6Thcb1x1tFLwTJSBybQE/TZ+iql1WoKqxtF/phYs
	nkoyJDCryqMuJ5fl/71trtmUXw==
X-Google-Smtp-Source: AGHT+IHAa0r40XlhCLKJ6OiI3n85Ys/Zx3L6TuqH7DWnV9GSr0hZ6Xi4rCXYTL9SrH3DOUs3Cb2AiA==
X-Received: by 2002:a05:622a:148f:b0:425:a72b:9a64 with SMTP id t15-20020a05622a148f00b00425a72b9a64mr818786qtx.131.1702065499970;
        Fri, 08 Dec 2023 11:58:19 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1994:b0:423:b70e:f8f2 with SMTP id
 u20-20020a05622a199400b00423b70ef8f2ls2493987qtc.0.-pod-prod-08-us; Fri, 08
 Dec 2023 11:58:19 -0800 (PST)
X-Received: by 2002:a05:620a:839b:b0:77f:643:ef82 with SMTP id pb27-20020a05620a839b00b0077f0643ef82mr756978qkn.79.1702065498972;
        Fri, 08 Dec 2023 11:58:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702065498; cv=none;
        d=google.com; s=arc-20160816;
        b=hcqcM63UChTpJrsFiYcj3eFMC4z8kzmUKsm94q1WbCmp/e0ethXBFwLp+j34rI8sb6
         tkCdwi7YWv9Ua39BeNu3AMLTz5XQH0WOOxZAivZWY8d4cSHUZv2JRgspHVdj6RezrRgV
         85ZvgfRrPpQpklov+5zaH6yURnl2oqN5GVbN1e6sSjQbpN7mmMht8za4tU1I7oCcYqa+
         eRQ6rf8Ywq+U1UU3ihS3bp09Nvoqlbyo1yZ2cHoFved3W+Ibjr/5sblCGeSZTvQz8KvO
         6W2InX5SBZNxMwqJlLwJpcAvmcrZNVaEWjAPu+tlYe9V9z39n0541mqFcuL8p62c90zP
         TC7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=3ialZ9SOXm4MtVSls3N49K3pqvtNAZ2zFuB6VHfn3vo=;
        fh=dySJoaI0YIg8lBdVIj5InnGto4jopuxePvx29Zt5bFo=;
        b=qrINuIB2SlBq9NKwxSb5sw9dybWW8HqaxvmfkDu3d0GwTb4ArWe+4dmtEWtI1cqfm9
         D4tD/NT3VleDF6I4Zid5TubrmZVv5oyK0QuK9qiUNXwmJ4KIfPuOoz5Z1MMIChl/b8+N
         vCK/tB1weECOftd+w5k/lHThLH3CKsUhiP22WQuwP7tskNVQg6reAtdePieNqHKxhMBV
         L8/wzKkR4oN2ITE4I+uhFShC69S1zSvENO+DW9RYP0t9VXrPc9HW30QNh5QcNmvDXzF+
         wVky/LF8lHUsFHP1sKdYJZRvFy3ni92dRXWXN91su78Srs3gf0UX3xsANBXhrWKZ6aty
         /5mQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id w14-20020a05620a444e00b00767d6398eb2si3037769qkp.341.2023.12.08.11.58.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Dec 2023 11:58:18 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.29 as permitted sender) client-ip=66.111.4.29;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-665-GT0tDM3eNwKflUW6GL-IFA-1; Fri, 08 Dec 2023 14:58:17 -0500
X-MC-Unique: GT0tDM3eNwKflUW6GL-IFA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B4D5185A782
	for <blinux-list@gapps.redhat.com>; Fri,  8 Dec 2023 19:58:17 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 5812D1C060B1; Fri,  8 Dec 2023 19:58:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 515DD1C060AF
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 19:58:17 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25EFD1C01727
	for <blinux-list@redhat.com>; Fri,  8 Dec 2023 19:58:17 +0000 (UTC)
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-349-MAcK-2IuPNOA6E7cVsu1LA-1; Fri, 08 Dec 2023 14:58:14 -0500
X-MC-Unique: MAcK-2IuPNOA6E7cVsu1LA-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailout.nyi.internal (Postfix) with ESMTP id A7D3D5C014F;
	Fri,  8 Dec 2023 14:58:14 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Fri, 08 Dec 2023 14:58:14 -0500
X-ME-Sender: <xms:VnVzZVPgRJ86NMz0CSlqcboytTt_8mt9nt4GRW0BoNaF78Za6iNbWg>
    <xme:VnVzZX8xWMCLsASiFg4dXHOUzWqVBvliLlT4V8IgY_PG3fMAL6dwzpHAD3DfyGwBO
    FvIqRnfuMkIsfyNK28>
X-ME-Received: <xmr:VnVzZUSFedzFrSVQxnXyfp51IrkS1-SO8w3853H_blh-rM3QGQtUYYmkq-x8eAcA5S6kGSECZVn6RxgMKJpvHCDAQGit5Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrudekiedgudefvdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepffejieeugfekieejuddvuddttdejudevgeeggfelvdehuddu
    heetfeegfeetieetnecuffhomhgrihhnpehnvgifshhnrghtihhonhhnohifrdgtohhmne
    cuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhm
    vgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:VnVzZRtCDCUY1jqAcio6_CY70Mb_riGbnbAm_uO-xqrgH_9VJk4A-g>
    <xmx:VnVzZdcrxGD9hMsphEeVqkVn98o7OxTrnn5rT6ZGHvHMKauC41WwMw>
    <xmx:VnVzZd1wBNAgjLO4dadK0bipN2KjpIp5W81RgdTWiIn2PZFTAwt3Tg>
    <xmx:VnVzZdFV4dGgzaIQt-FTbEgQO3bm7HT0rcjrYAEH1dRxMulV9zAsew>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Fri,
 8 Dec 2023 14:58:13 -0500 (EST)
Date: Fri, 8 Dec 2023 11:58:11 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Jude DaShiell <jdashiel@panix.com>, 
    Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: quick links are numbered question?
In-Reply-To: <Pine.LNX.4.64.2311292315300.3720576@users.shellworld.net>
Message-ID: <a215dfab-bf37-3fdf-cd50-f41a70b8803d@hubert-humphrey.com>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net> <c9277002-d894-203e-511b-952f27c98048@panix.com> <Pine.LNX.4.64.2311292132230.3719449@users.shellworld.net> <7640c72f-2f0b-9f4f-11f4-5d660150b273@panix.com>
 <90a6a2d2-2645-e21f-f896-d4aac3a998a0@hubert-humphrey.com> <Pine.LNX.4.64.2311292315300.3720576@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
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

Well, Karen, Jude, and All, since then I experimented with a site, which L Y N 
X gave me a blank page after a 308 error, e L I N K S had "save display cancel" 
but the winner was L I N K S where
www.newsnationnow.com
displays correctly. Also, some of us were wanting a tab option in L I N K S. 
Well, I don't know what to do but in its man-page, makes a reference about TAB 
having to with frames. Anyway, I purged E L I N K S as it seems useless.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

