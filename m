Return-Path: <blinux-list+bncBC3NDNGRUAMRB34NRG3QMGQELGJCT4Q@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id 48BCD975E96
	for <lists+blinux-list@lfdr.de>; Thu, 12 Sep 2024 03:42:09 +0200 (CEST)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4584224c8ffsf8889771cf.3
        for <lists+blinux-list@lfdr.de>; Wed, 11 Sep 2024 18:42:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1726105328; cv=pass;
        d=google.com; s=arc-20240605;
        b=JJnyO6PzMzqKT7eGmyiYw42kxkPXvACTdQ5u17xgrYumARK6CB2w6mnyQebzT8emff
         3UW3WWGlZVg/Cv1a2ZvMuT5GXVCsgxgqjP0At12+z8eB+tKCkRL4yhX1BX1SBl9YPRc9
         aWO1ik2uLFkr4RXi6qn03S48UVND7TIUGrUrxjS5qZTUmuwEYA8YggFqifVziSBgtXZu
         MEAXZIFaX2zy390S3juK3iJrqJFl4ULkjm8gY28+ty6mmyvZU1dQnnUFXEG90667L1z2
         Cnsw8FOi2OH4Yc2i11WhqiYR0L84Wa5TAECMNJ93kBq1HRqzT7Vu66a0Tje28lVrDeeT
         Cruw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=SjNV60GaJINAUtpGlX8xjjaFYMe15l/q1PsZx9ycOH0=;
        fh=lBGjRDv8v8OiCVTcjz/4/ZYyH+jKEnoIy4kswpL+m/I=;
        b=Mjcrn8c2czx3LS8LFv6FWd2DlAyjjdwcuTHV29Xwu5TXFpIsuvoyTm1gpmvRqu0bWK
         DTWUE03MOLQRIJQcSR8z4ve4jfYJ2Kfkfp13VGZCWHl5JKu2W2lo7dDhIRp442HZkGnh
         Arvc6WpH/NWzuAuYPWfmSlAr/UxqeipwQlxWPZVUeLSoCn+MDI2MDsInO1HUqqMThv9/
         WHMBj5vRKIfWQfgAsHo2Qt9361bP0PYm7FbyIG6sDL+5jMzFUeauiG0poSLsGd8AgR9Y
         /jveyxjFwGTWSz+tTk5Vfte7UdLcLboj1BSjaDakg+SAOD3/MnEN9C3ts31mZ9qP2/1y
         noWw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726105328; x=1726710128;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SjNV60GaJINAUtpGlX8xjjaFYMe15l/q1PsZx9ycOH0=;
        b=WwooZ/cXT7s4N07NLE0hNu8nRAo63Kje3X8joEjtYBXsWO7KBDVz7hQhT5ihzuHkXl
         di23i3oVfmaZ08ydMO/Q6VYpzUj8RuEYo4l7W3SQw8LW2ro+R4v4Cyydfc9hnhlUkpBS
         BSAtPBfjcLzhbpqKoLu9mxTgnC0ai9ybhkAHhZeoaYmVSmHjNgjdC+wVwEX6IhMWo0Yh
         N+tKQzRQZb3J9q6XSxueZQKFqCVj8NAdyLQ9l6yu7nqf72knw/esKAY+6uUhjTUzg5/7
         8AbRN1FAaNJxl//qHylh+/6T7M5uZWnOkoJQt1IrSd3AH0QLCxLdBAy6eiEPu2K7Bj2k
         itUA==
X-Forwarded-Encrypted: i=2; AJvYcCUSM8B3+lwM56Y19URLXzR486vINYrGJT/1lZ2J+lYPruO7xoT9giwOKKNyFDdgNj1Zn+/4Dw==@lfdr.de
X-Gm-Message-State: AOJu0Yw4LbsfmFX94X3GChiYFBDzshvI+O7hTZHtnEBH0jkB2+stRxUy
	iTtVA8i5ESod/g4psjw8a/k7qtnL6UyRmLk+gQucs23/HwCFVFsRO6BKcfL4cQ4=
X-Google-Smtp-Source: AGHT+IHUePY997/CM/pIWw+h7+S2WN5BC4E3NPwZsesint6DhMoAjQSLI75SWcY9Llg56vcFAx2Hug==
X-Received: by 2002:a05:622a:587:b0:458:51ea:e36b with SMTP id d75a77b69052e-458602ac723mr17951441cf.5.1726105327819;
        Wed, 11 Sep 2024 18:42:07 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:18a1:b0:458:a6c:8071 with SMTP id
 d75a77b69052e-4585faafe6cls6952421cf.1.-pod-prod-04-us; Wed, 11 Sep 2024
 18:42:06 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXOWC1XwUIXfvNTWGdsUBM3W1h1ZBGTgQCBeTK5tp8bh4ScWGga0PJ7QqnflHzO8TXxhXl6SZEz7BxcDw==@gapps.redhat.com
X-Received: by 2002:a05:620a:2492:b0:7a9:b308:64f with SMTP id af79cd13be357-7a9e5f91ccamr218374585a.46.1726105326859;
        Wed, 11 Sep 2024 18:42:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1726105326; cv=none;
        d=google.com; s=arc-20240605;
        b=dfdNl4E2O+qPZ14uw0jksCfF0CfUMWujaiCut1t9GO3vz5lvuzwV7+zoBUP1KGVfI7
         r86UnTCZkCPJoM5KQ1YIZ0XwtpzMDn0mnkM3ziHcXGJxUD5VAqKIKT/JZxALa90bGJ+A
         piCXtKnCnYEetRZYu7Pxl3mVsHFm/VKUIkldt9PphJy3t2BtWCoNIu0jVqSsSft987am
         8Y4c1WAzzxJGt7D5fD+un+ussRKPu+a86F5D9Vt6UOj8xmvR9ASlfkozU4DLQdP5ppPU
         XtaNFO5DgvdEBuLjRHwUMRi5kMq2gWahTFPtaMg8jk9o3XSTysgjlfOccvWX/5ZcnWhw
         S2+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=QaQ2D+i4iI73olGV84zqjNo48y1gjBY1muJ83h0WAmw=;
        fh=71dRKId0vhc2OBbBdNyFr5e5jwSd8uHPlX/mmKgg3wU=;
        b=TLaEsnkmHqyE6KKNMBpnT3mmoEJNcFDUT+xEJ0i4w0wAFcxIvZ3ywdqKe+o8oClgvX
         H52gNwVuR4n/Sgjn4khOi8ZluHRZ/28Vn9ikQ4aF1Ulr63zOh4/NS+fE0yf++337A7oB
         ufMKUY2fGrc+/6w502PWLz8vAJVp+Cl2c+QnhM9+TL4AedSuzHKsHSuNWBVNRmAnfOXG
         i1Suelle2NkgLtzjfSgJVT04+u8vtmJqJ0YoA1trDAgCRdNXXLf7K84dzKQBUpvL7reK
         ZL8mUAJCfaRiejU/fsvx1ElLK2549DWk4Ga4FVp1+Gm9anyKg8bEpDykOhabBKP8ON+O
         9QIg==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7a9a7a34cc8si1178364285a.323.2024.09.11.18.42.06
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Sep 2024 18:42:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.147 as permitted sender) client-ip=103.168.172.147;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-21-54eWDOAONbefjs6PcqAl4g-1; Wed,
 11 Sep 2024 21:42:05 -0400
X-MC-Unique: 54eWDOAONbefjs6PcqAl4g-1
Received: from mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D776319560B0
	for <blinux-list@gapps.redhat.com>; Thu, 12 Sep 2024 01:42:04 +0000 (UTC)
Received: by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D08933001D13; Thu, 12 Sep 2024 01:42:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id CDDEF3001D11
	for <blinux-list@redhat.com>; Thu, 12 Sep 2024 01:42:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 6AE811956080
	for <blinux-list@redhat.com>; Thu, 12 Sep 2024 01:42:04 +0000 (UTC)
Received: from fout4-smtp.messagingengine.com
 (fout4-smtp.messagingengine.com [103.168.172.147]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-275-XTBgVD37PJimsXVIUG2uzg-1; Wed, 11 Sep 2024 21:42:02 -0400
X-MC-Unique: XTBgVD37PJimsXVIUG2uzg-1
Received: from phl-compute-11.internal (phl-compute-11.phl.internal [10.202.2.51])
	by mailfout.phl.internal (Postfix) with ESMTP id D10371380202;
	Wed, 11 Sep 2024 21:42:01 -0400 (EDT)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-11.internal (MEProxy); Wed, 11 Sep 2024 21:42:01 -0400
X-ME-Sender: <xms:6UbiZvAtcpaKeX4SZCKZ4iZeIe6HRGsiqGlCCEOO58V0cz7N4EkaTQ>
    <xme:6UbiZlhLGWXR0-uzOj0NZeEBZgQQLUoy7Tomyh66ZjpGbUCUqefODrr7EtUprKVQf
    z8C6qCSPTXeUibMOss>
X-ME-Received: <xmr:6UbiZql89oF2h3Ege9JEPsvaW2VLan4Z6aQCuZwyW9OYqJh2H79lPtVuxXMtEccpkeLv--2r7N3Erp_RyPumkagNp4G4B3FwKC0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudejvddghedtucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
    fujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghh
    ihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnh
    epvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeffledufedtnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvg
    eshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthhtohepvddpmhho
    uggvpehsmhhtphhouhhtpdhrtghpthhtoheprhhosggphhhuughsohhnpgefudekvdesgh
    hmgidrtghomhdprhgtphhtthhopegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtgho
    mh
X-ME-Proxy: <xmx:6UbiZhxWoohI1W_6bCICgH3qomg1zRna1yfQDn_FOinUYqKJ1fEfLQ>
    <xmx:6UbiZkSWj-yo8zxcMvFLWhEnVyF9SI05Wpr-2gLAYcZHSCvoYb94kg>
    <xmx:6UbiZkavurmMvL_qrj7Ng9Gf5hazPhHj1PWeCcbgdHm63t5xnRA9Jw>
    <xmx:6UbiZlQWG4lFiKJONwJqIwT9uAhMnoQptOC6e-OQooirIRbqSXDpHQ>
    <xmx:6UbiZvendV0ZdgPtuU1MlmLVOKBiKu6dqnP7Xp-h__N0NZIhdTon6_OQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 11 Sep 2024 21:42:01 -0400 (EDT)
Date: Wed, 11 Sep 2024 18:42:00 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Rob Hudson <rob_hudson_3182@gmx.com>
cc: blinux-list@redhat.com
Subject: Re: any chromebook users here running linux on chromebook?
In-Reply-To: <20240912.013141.655.108@[192.168.1.100]>
Message-ID: <9112fbab-7e89-0e6a-71b6-339624c6e0a6@hubert-humphrey.com>
References: <55F61CEB-56FB-42DF-9225-1A94CF10141F@panix.com> <BBCE40EE-AA90-4F6C-9784-20BF9F6C09C2@gmail.com> <19006e66-1bcd-196b-8e63-ece8a8c9246e@hubert-humphrey.com> <20240912.013141.655.108@[192.168.1.100]>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.4
X-Mimecast-Spam-Score: 0
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

Well, thanks Rob, your suggestion found no packages, however, an aptitude found 
12 which have that in its name, some are doc files-and-most have an st after 
pyte. I suppose I could just cut-and-paste-and-install all 12?
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

