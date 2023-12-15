Return-Path: <blinux-list+bncBC3NDNGRUAMRBIWL6GVQMGQEATMOFUQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A7EC814ABC
	for <lists+blinux-list@lfdr.de>; Fri, 15 Dec 2023 15:41:40 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-423d293392bsf11087251cf.2
        for <lists+blinux-list@lfdr.de>; Fri, 15 Dec 2023 06:41:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1702651299; cv=pass;
        d=google.com; s=arc-20160816;
        b=OXmPLC/p10CbNrM2ykW8PWsGiUob4Gy3V+JSN+sD6Jyf+01OxD/9NhsszIfuZe+P3b
         SKPMZQVjIDNH7JskveRAU6yV3zEUox3GgMz31vCjsMNxlFmk++974QbYSHNpOkDfGzZN
         5gRlWwWk1coVSkK4x4hxQYNIlypYvBy89kItPWY6AbVBiz6O1roEO5DWws3Dm4Md7N5D
         4IErXjpOuCEzT1ZL6upfFfJMw2UoBaR92DTGMneJRDsKtB28KZHIZsTSap1lj2h1L+GF
         4+U8LjltDOD4/855Qp8P42AkzIpzl0gREUJk+HAhQYjXRIBkFBhwEGeogDuLXYg5JCXH
         xSRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=Mywd/nTr0zx/HvIkmp6/cS/KUTHnuhlTkYgJ2nzB/lY=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=kO540BNhiEt/jdDCTLaswTi7kj3Vi8ouo18pFNcaWCYlSfIbFBR8KtQBQldftYgRlW
         qIFN2tH6b+xE3MqO06B2hiKU45viWGdekejgOv74CeRe1QNlVRk8g9zR9WMQnGQ8O04R
         KKDBDBxFhtBK6JYUkGShm6AfFRt45hY0zH/gbl7NA2L2YJ7zQN0k9NhBYgKW27LkgPSW
         LGPblbpXWDxzcfzkpYaJxI5C8xEZeHsUKVQQcOz+whx934ByiFwmqFSzPijn7aCHTEpd
         1r3XvLoAPUI+scDqkCZeDSeJXezizp4Paigi7uK+elDTJMTPv1iTv6BTR1mtnXqfiEus
         3aLQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702651299; x=1703256099;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Mywd/nTr0zx/HvIkmp6/cS/KUTHnuhlTkYgJ2nzB/lY=;
        b=O7cjj0TQW7tNDPEdjs0JYLoT8VKs8CfrA0/iWOIcwHkm9nPZm0hhGYsJlsNZtIj5mo
         LqziIub4ol5GvPq6j+rpDsjs+HUIv32p6i55Srs+BpTGFSkzlFr+7QcNx4/gdqMY9A2B
         J5oc4DdGAri5XNZF9HkNtKj2MyDYrNKmF28N/4rYyJ8XxM98gPaJbVuT7xFwZU+5oYOY
         iv1BedDQ0Mj1p/AJIFTonuVC5yJqhVZLlKhAbMBmH9d6DDXdeQxlJsZ0rJ1De8HsvIy6
         MJiOk5sl81Cenc+xv+qNc0x7jWytEpGfCdwqFqdbwuGyBVJqZ4+Pd1wwoirMzb0AVuxu
         GQ+A==
X-Gm-Message-State: AOJu0Yy+axzNnbziVb51FZ9K8VRFMkzZSy2tF+55bGpxv8ukMRrsSDCM
	9koqNLzsf+9dWoMSUrx9cktHag==
X-Google-Smtp-Source: AGHT+IERvYE8xMWQGyHj7vBCzKJLt8MvbQM9BYqQi7OwOPXF0g27ENz4/BzFfGFnO4cNuulHpvetcw==
X-Received: by 2002:a05:622a:16:b0:425:8663:a06d with SMTP id x22-20020a05622a001600b004258663a06dmr16811801qtw.64.1702651299039;
        Fri, 15 Dec 2023 06:41:39 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:4d49:0:b0:422:1bd:4708 with SMTP id x9-20020ac84d49000000b0042201bd4708ls1481519qtv.1.-pod-prod-01-us;
 Fri, 15 Dec 2023 06:41:38 -0800 (PST)
X-Received: by 2002:a05:622a:100f:b0:425:4043:18ce with SMTP id d15-20020a05622a100f00b00425404318cemr15185491qte.129.1702651298125;
        Fri, 15 Dec 2023 06:41:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1702651298; cv=none;
        d=google.com; s=arc-20160816;
        b=BLf0qbPjQPDISejWYQS9yoV2Wa1EVygzGgHQ6Su9CUlY/EBh510mLXDbiDQOKHq9Jv
         VN1LQFnjY54tajfIzaW4GAguGU0SkI35XZ3H2pUwd3NUf7aErBYvmegtfOGtU617k5ER
         tvsi/SmMlaAO4PtGM/mwYamk1i06i7qEG5etmk+w6g2RbANC7qs4vPGTa7WWe7blyzlN
         9ubxE1sixWij90ADJl+PvT3v6Rtakz1tjvmvzRuHXmSNQsxpTvx7g/II6fRESHiicts4
         Yv7g4+JEYK7XgqHQD+4ALbeKjcjpYpYb3h7dFVDK1GOm0/fMjdnU5x72WK2syiyE8mGD
         S3Hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=Q6OZbGNYPtoje+D03dIgNzs/uproiSdTAIfA27+p+N8=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=FhLoibT0FDBbK2UYySz4vckmzj7GGT6Mj/qNnN99rJNg5wcc7FNnkVbs+sab8qlfaw
         phzt1FK4ESK1H4UkSlCvFyamDUPKUgM/+Ff+HQxlKXL9ug9f36rYdO1XuTF7WEwnff9L
         xH4ElpqoKMVKSXlAOQjWVIhC/A+4v08WBiG146mTHU+nDMxagXJCFG7k/N7a7NP+Et5w
         qGg+5+pFBnjd6X7HQyjJnxkxnqM0j6BK5yhIxe45F1kq9LX3Z++gBLsHuMqTAjMYVcjU
         Lra15j5USI96abIdoULKNoH3nDPHuW+BQ0hBxZBa90lT/1UhYboOQUswzJnCgZQ+VFmi
         pVqg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.25 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id b26-20020ac8679a000000b004181abf57fbsi6264242qtp.3.2023.12.15.06.41.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Dec 2023 06:41:38 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 66.111.4.25 as permitted sender) client-ip=66.111.4.25;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-258-D_sHJpd2Pz6YUO04HqTEEw-1; Fri, 15 Dec 2023 09:41:36 -0500
X-MC-Unique: D_sHJpd2Pz6YUO04HqTEEw-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 6A6A488437F
	for <blinux-list@gapps.redhat.com>; Fri, 15 Dec 2023 14:41:35 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 50BFB5026; Fri, 15 Dec 2023 14:41:35 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D55A75191
	for <blinux-list@redhat.com>; Fri, 15 Dec 2023 14:41:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 984E53810B1E
	for <blinux-list@redhat.com>; Fri, 15 Dec 2023 14:41:34 +0000 (UTC)
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
 [66.111.4.25]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-247-bYZzqz0UMAmCZCwZpSkhoA-1; Fri, 15 Dec 2023 09:41:32 -0500
X-MC-Unique: bYZzqz0UMAmCZCwZpSkhoA-1
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.nyi.internal (Postfix) with ESMTP id D968D5C0165
	for <blinux-list@redhat.com>; Fri, 15 Dec 2023 09:41:31 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Fri, 15 Dec 2023 09:41:31 -0500
X-ME-Sender: <xms:m2V8ZX3hSzu87xOuplGIL1JJ-tleVw8IbWjvU7Ib3_tFpCLdcV5ryg>
    <xme:m2V8ZWFsF_mauCI4D9jr2V9YX4mQodbqoQNwdD7ewMDa8Mj8cJPC3Y2I7UyO-LvA0
    TaUlJFue4RlO9Oyx_M>
X-ME-Received: <xmr:m2V8ZX6jJBm9EKNgBxgDq_iIfnbFlyoMrjuu_OAgqZeXUTK7id7aE1YiKBFz4voNbPm0zIqWfYpRlU3UunspBAMLwWjtOg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedrvddtvddgieejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepjeffffdujeelueffieevtdeiteettdekgffgkedvueejteektdehfefh
    hfdvteeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:m2V8Zc08iOD8WLLdaIOgBouPb5JhgL3VSURse_QA0KEcCzsE5IGibA>
    <xmx:m2V8ZaHV4Q_MqcKJTML5_1aqxJOEN8evC98ePERihrldFvqsXjJ1fg>
    <xmx:m2V8Zd83abgSqgtwvk5TGegNKUaNThs6yt0G6YBavHXGJqarQfzIyQ>
    <xmx:m2V8ZVxqHgGHOeyBJh7zTSrXt32zVzCc2d0l3ysEwB1OsW8JBczyeA>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Fri, 15 Dec 2023 09:41:31 -0500 (EST)
Date: Fri, 15 Dec 2023 06:41:29 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: spd-say Not Working in sudo?
Message-ID: <31c4508a-c3c6-9cb0-0a05-a4dc15e850b4@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 66.111.4.25 as permitted
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

Hi All: We are trying to switch to Fenrir. Ultimately an emacspeak DecTalk 
solution would be best, but meanwhile I have Allison, 1 of an embedded Voxin 
voices. Allison works well on a laptop, also running Debian SID, however, on a 
main console only machine, spd-say only works as a user. At first glance, it 
looks as if my sound isn't working as root, but yes, mpv plays in both. We've 
tried many options in spd_conf among alsa, pulse, pipewire, and libao. No 
change. Problem is Fenrir only works with sudo. And yes, I am in a sound group. 
Can any1 please suggest any way of fixing this? Thanks so much in advance
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

