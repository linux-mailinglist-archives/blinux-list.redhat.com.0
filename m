Return-Path: <blinux-list+bncBC3NDNGRUAMRBFNAWWVAMGQEYOHD5PQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f197.google.com (mail-yb1-f197.google.com [209.85.219.197])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF707E73A1
	for <lists+blinux-list@lfdr.de>; Thu,  9 Nov 2023 22:33:10 +0100 (CET)
Received: by mail-yb1-f197.google.com with SMTP id 3f1490d57ef6-da13698a6d3sf1818793276.0
        for <lists+blinux-list@lfdr.de>; Thu, 09 Nov 2023 13:33:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1699565589; cv=pass;
        d=google.com; s=arc-20160816;
        b=qBXi2c832+CJptQu0U+pgfhKYAOMq2BhhcQ8llIyKB5Hzy5peNHhCB2gzrh65B7ytY
         7X4e6jVPUhw1BcPUqzzE0oKztiMpaPd3RsUyiVuKjRKfOsTcMmOThwCAyLX9V0xrq/xl
         WvDcYnwf60aCl6savs5DEttCBn1hKMH1jUXFO7CENKp0jqWRGFMXvxagLQ4mqUiSoor7
         CTS86gJu8KT5++6MoqaezFxbaXzsY64FKN+W3DAM4wE2WN3k8WSweCDmzvmvqVCpaoh7
         LST5q8BmYVOehtWFvFIhfuxOa3G4Xsx0KMKUiTqk3pe+QgY1akG2N4LLBPT881BQ0xPF
         VbbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=Qq5JAYhpu9DhmpvAyETq6BLw1DjO9IDu/ERTgHN4kzM=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=wIjxfrvxzGY1Y0d+0jMUo4FarXCJy34Hzi5pYt/f7BzKzoSFwGkwz57p1Z+1h1SP8N
         q4eMuKz+wd69FZK5RaKPQEthn5hPIh3vx3n9N7XsRM7HnsI6T0h5UXk7Nx8x6dVkQuBG
         Ny4EpX2SaMSnPmC0MYVJLoHSy/IZEIlzoJx/RZ8+WOnpaw2CF11/4qU9eUDMu4bc1DWc
         ESK5UEaIStmzPfMeH3+/qox9BLgcaD8cat1NdTkWvouYblOZC8vc1GvQES8UFKUhgjb5
         Kqk7a7Em/kg7dj1P0jfMZp7zYipRKIfPKLw/us2MKGj5qHGOE6elNinwHZNnQFvIYmKa
         WQhQ==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699565589; x=1700170389;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Qq5JAYhpu9DhmpvAyETq6BLw1DjO9IDu/ERTgHN4kzM=;
        b=gd8vJ+qVIucRUxI3QzR+Eje4S79vsNPTAZYUAY82h78w3+EKf3qbZ/nT4e7lTlDnNf
         TOyXL4o5i3s0ubwULo7+Yruf2F0d+7WqvAWhsfjGG0ykk0uC/Wu9vjuRUd+UqDIg1iTO
         +0uyzoW2hM4G9Nh2qmzVi9JDtErsu18smg2YhVr/JgM9j2BuJRisBD/4EcIu9VwMSbAM
         weBUDfDsMYS0F2p8MEEWnUTfHuHMpwsafM34mBszdQ4VWyKT2EXOZFIVTq+Nig6V6ajP
         eeL7zOpkq3yLQJd5gsBDC4IAz/laU2LHHQFOeYHFYoedUjbaoTUBELvJrHjw6EbKRnWl
         8xfw==
X-Gm-Message-State: AOJu0YxfzzPLzDXuYq6SxCMCQ6usuuroB/8FjJJAkfQ4jusXEBMtKPtd
	ujua6LsjOoAawI7f0T3548JrvA==
X-Google-Smtp-Source: AGHT+IE6t6h1Wts2341C+q/62xY+AFEu5i+2OMHUvS9LvuVOB+PPqm71MofvrA9grSfWBT9Ppuw13Q==
X-Received: by 2002:a25:fc12:0:b0:d9a:4f29:866d with SMTP id v18-20020a25fc12000000b00d9a4f29866dmr6096619ybd.60.1699565589534;
        Thu, 09 Nov 2023 13:33:09 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:6c09:0:b0:da0:7800:8cf2 with SMTP id h9-20020a256c09000000b00da078008cf2ls1694444ybc.1.-pod-prod-05-us;
 Thu, 09 Nov 2023 13:33:08 -0800 (PST)
X-Received: by 2002:a25:808b:0:b0:daf:198e:f6f7 with SMTP id n11-20020a25808b000000b00daf198ef6f7mr127738ybk.40.1699565588578;
        Thu, 09 Nov 2023 13:33:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699565588; cv=none;
        d=google.com; s=arc-20160816;
        b=YmYrFuOltBKaEoecUOiH0RkbFFvWBFF4zqlXNi5z6fisnUNwuC5nekkkIrICBvV5AE
         J/NQ7N5TVNLBPjphDxQoXp+m40IQ5ahLOaHuyuVwUDgi3WEeZIg/1BClDgYVTMstECII
         s2LuI0yllMtpvqZuS5sNYed3JnmmB/+xrpRlCsZG7k+Zbkll04HXNzNawNbbT9rLPFB7
         OalEmkjIRmP6T7xqjxsk22gFJEl0vUpcMndpw2PI8a48RdZJAwjhP4e9BHUQ576sVRVx
         m50mLyJb9rZxHt/GcqbUCBTUyIqk0035B8jaJn+7dIi2nWUwX9kBfWWxcbl+qr0AyPlO
         uoLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=7gJKdjDVFuiA/twU5+Rfp8IQZ5txVL1o4lKafCDzdo4=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=pnxNJIL5YdlhzGYB5Ng2O8Pm+O2m8c78UIiSEis5VcbEFZiZUF6zv7ZhHmvQZtZHKO
         f1cr06HfctRuD0fu8OIxjFy+cEQJgy4z+9SCqGENnuB6+hdUxntt7EpG/sPwijPujpQs
         pMYkUTV8IZ/UsyzJU0sRGXrf8p5Vv2cbnmXJIjt9z+iPOQi1JfF5TYmwdvA4g3vG4uHg
         6fu89KZq6uC7NCt855B9o9/ugzY551KGtVGGi2nHz09IDHqYDfS+e+8HWfDrUsnMHfC0
         LP8mjXe3reSHWsS0s4c3l/cMSynV1rg0LQR9/xEdauZD7ENjnGq2PM13b2IZm3M1NOJw
         hlbQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id u20-20020a05622a14d400b003f4ecb4085bsi3313686qtx.289.2023.11.09.13.33.08
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:33:08 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted sender) client-ip=64.147.123.20;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-353-B9KnUJmQPq2MU0CXG4I3ww-1; Thu,
 09 Nov 2023 16:33:06 -0500
X-MC-Unique: B9KnUJmQPq2MU0CXG4I3ww-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 4D0263C0009C
	for <blinux-list@gapps.redhat.com>; Thu,  9 Nov 2023 21:33:06 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 49F3D42409; Thu,  9 Nov 2023 21:33:06 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast09.extmail.prod.ext.rdu2.redhat.com [10.11.55.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 424EB42408
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 21:33:06 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A09D29AA3B8
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 21:33:06 +0000 (UTC)
Received: from wout4-smtp.messagingengine.com
 (wout4-smtp.messagingengine.com [64.147.123.20]) by relay.mimecast.com with
 ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-403-A9bJLYQ0PNWv3KvCB71qoA-1; Thu, 09 Nov 2023 16:33:03 -0500
X-MC-Unique: A9bJLYQ0PNWv3KvCB71qoA-1
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 15D073200AFB;
	Thu,  9 Nov 2023 16:33:02 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Thu, 09 Nov 2023 16:33:02 -0500
X-ME-Sender: <xms:DVBNZfBJ0YLuQ5EgVnCX1LK3LGQzhHdHNWqnL4ios4biF4ID28fNXw>
    <xme:DVBNZVg3wEw4VsTJdmRg3BcDcbmcRjT096lWFHt45CHrMqw0UnFBFxWSiECXLFJs_
    wneP5Perxhq6KFn0QI>
X-ME-Received: <xmr:DVBNZan4EKxTSedPrRCeFseMVPNOI8UQKwB4ZakbI7diUM7NfYlZ7nPC5OQmJtNsZB1wpl_SUpe2R7cFpXKORyUa22yE343-OQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvkedruddvuddgudegkecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhm
    vgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqne
    cuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeef
    fffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:DVBNZRwiUZETAalE3ERjbE71rMKqcE5yvGpwUwcTEjsPTSzNkgZMhg>
    <xmx:DVBNZURyRLqcywhoF98gDNhI7BqB_Lsr1PN-jB9KbQTVbJD4gxETzQ>
    <xmx:DVBNZUZbZJ3rHfQtLQd4JptU3SHpfYbHzxM58xeXcpqqISiYBbdq4A>
    <xmx:DVBNZd4hW8gQnTifTwwxI7faSn4gkTQEFUZ5PQswMdPDQFUMt0yJCQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 9 Nov 2023 16:33:00 -0500 (EST)
Date: Thu, 9 Nov 2023 13:32:59 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: insuring alpine's setup menu speaks?
In-Reply-To: <Pine.LNX.4.64.2311091618110.3313276@users.shellworld.net>
Message-ID: <d8856143-8413-72c3-4bb1-da17921538d1@hubert-humphrey.com>
References: <Pine.LNX.4.64.2311091532130.3312735@users.shellworld.net> <914d2b89-e0fa-7eb1-bcac-fb51fd255c59@hubert-humphrey.com> <Pine.LNX.4.64.2311091602230.3313038@users.shellworld.net> <Pine.LNX.4.64.2311091618110.3313276@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 64.147.123.20 as permitted
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

Absolutely Karen, you want to enable "show cursor" cut from cursor may make it 
easier editing.
Chime

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

