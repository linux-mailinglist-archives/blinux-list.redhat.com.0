Return-Path: <blinux-list+bncBC3NDNGRUAMRBM5YYK5AMGQEGTMBHXA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 438CC9E431B
	for <lists+blinux-list@lfdr.de>; Wed,  4 Dec 2024 19:15:17 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d8897ea603sf2030796d6.1
        for <lists+blinux-list@lfdr.de>; Wed, 04 Dec 2024 10:15:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1733336116; cv=pass;
        d=google.com; s=arc-20240605;
        b=b94FlQFkAEWvbQNBZQNLTwtZ54Hj4F6wkPAvOodpVHaMOaZOu41XJRYZuYU2aeElnu
         i4LhVbE4mdL3KMx+YEPNdc54mfqH0EOrjrSdCtdwdxxpdRiNYEt+WOf7rGluzOUEzCm2
         DU9U4Y/Rs3aKgnsAF/MUbDFLUXP6DkX1ze1pxLW7m5UX2MPy7C3dfWd6qW8EtmS1sSD5
         Qoxl/nDlBmcn94myCar8CW7N3OOeLVX25/KAEFE/Oz6vUFu5or98rGQnSMPspSA6J7cv
         C4ZU5XAJpqEbvEPgzxV6L8CNt51T7+nRZcxBLL2iZanSOdfAbmml+LHHG0GU9LJ/2ke9
         7LKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=EeiZKfvioyAoI69hvKu7d3nlB6LL9cX9DU0D8uIho40=;
        fh=Vcit2D8Th8BJXR75+vPutN8mPVCseN8WgXrQK0Ks97g=;
        b=Mgv9iDeTHV5rIjGQG49tVuvIieG9feHHXmdQz5W9cyFAkY9II/BWLpSdG/l57B7K5X
         tPn1nnVrWyuof7qiNKl6aFevC4di5AUK4HRjkwCE01BDs7wKiyFiTGpN6NRrT0GoUwTr
         85KSNiBV9IIu62GcgwM93rgwBzWe6dkxnzOgJvERlBn2audlWQJeRdHKpCfOepEBf3oN
         zpu+86NB32oZimZOWGH/IpYpTjER4sG3ZrD8yGDQiCHpAymjxZaExq6tVsx2oodox3Ru
         fi4iRfBikTGN23HmWEhtPuQ4rpSmpV04OF+895972aYNVBuYZgy6FN3mdZRUIDZqnQhJ
         Itqg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733336116; x=1733940916;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EeiZKfvioyAoI69hvKu7d3nlB6LL9cX9DU0D8uIho40=;
        b=i6VQ5dO5wkVEmOfB6BbkpCiDZFlncEEzTZHQltLpqImAVijHg4C8fv7dsKQFsobaZx
         wXGbDvPI/daDI4ZfshVeBBKVc5+urB1RvW5utTJZkhzOiNuXMz1gxPlntf+7nz4TGIsu
         s7Rh6SYaXN4wUXhIMh0y6BfmC4Buc+avYVB4ifU3KfkJYMXK/HnYODtHSd6YTGKgNUKW
         nqj5Q9I+4n7PvxY51Xfsy5x0XrY92LeQ+m8q10JP01AWvsYeMNh+HcCUmZoFWlSzHprj
         YOOwEsuoo+9dpozPeovlddFb9NKvxfU9t6uAjydfbvSujOdPyz+Y/N6Na9WNoMn5ONB+
         WzGQ==
X-Forwarded-Encrypted: i=2; AJvYcCXiw1ULJu4ELlB5OiuO6GnY2AAmNkxnOj7klfYFElcXBbmMaxSerB4vM/BIfgOkLIfJcr8N4A==@lfdr.de
X-Gm-Message-State: AOJu0YziGjYTP5MM7sQsu5pOucLNBFNCAkSlviSldWv6+VAYYhR9fdC7
	RgIzKSQR2zqx/5B/IoxCjQD/eE3u4QCHfT9pWU29NoDuR2U45AMV6hHnw3lfVSg=
X-Google-Smtp-Source: AGHT+IFtFIbjbaj2ru7HJKZ+wFxm1obZrb4XKslbG+L+k0bcdYUjkRJeuWH4+SB8L6mczEoyygD+nQ==
X-Received: by 2002:a05:6214:f0d:b0:6d8:afe4:428b with SMTP id 6a1803df08f44-6d8d70350d1mr7540256d6.3.1733336115498;
        Wed, 04 Dec 2024 10:15:15 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:20af:b0:6d4:e40:5156 with SMTP id
 6a1803df08f44-6d8d6fb9bd5ls1186726d6.1.-pod-prod-00-us; Wed, 04 Dec 2024
 10:15:14 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWqcE9AoLgY1gAAkrRlNu5y5mIAnkrMqDtDDxENT9Qyx2ZoYHukUitJ6KtWApXOPPJTSlbFf0j7MuuVpw==@gapps.redhat.com
X-Received: by 2002:a05:6214:1bc8:b0:6d8:a895:ab67 with SMTP id 6a1803df08f44-6d8d7053f0bmr5703176d6.8.1733336114541;
        Wed, 04 Dec 2024 10:15:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1733336114; cv=none;
        d=google.com; s=arc-20240605;
        b=RR6lUrtZxw03QPZHJH73UndpkvBx/k65ihPQ3GOh1NwU0UuuYE/nO+F6wpfQl1lGUh
         IMG2FcxGuBBjHVJMqTGQb3uEOjhCmaUklEbmpd2K6HygiOdzJSN1wbj7ZIO5wgfT4JnF
         Akq1oSX4nel5ytPSGKuwdTW+UtnL8Hsd3j7A1EZMznOrtxXeqRE0vls+xSqeXxiIr7H9
         Stl/gp9eu/CDCNJmY1OMLLfOuuqNtVfGp0xzptQUoVBJADXpSWBIaBm5WIWwQFh9N4ME
         d7txulXWLVQoAuOm7iQUC+7MMUY7P/8qSuWehSvaaCcTeC6wkEzbnfGB4WPScw7zWRvb
         qzVg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=5qtv8BjCIfpFLMFCpm7orDvUG6ZJALQoOT+O99kfUno=;
        fh=IcqJJD4qaK8LzzaTBE8+DA5eDqYnBzlACt7lWP+7qqY=;
        b=dNbW8hjxlQf1Cg2mQIjWgliLJSebGQBIVPAwaWRgxQQEDh7wQMd7kSRNA2iQmiFrbm
         O8uhzlwFogVSmkXlEd2cjhssEcq7Fdt132zgPzSOxvc96eWJaBCcaZaS8tCUwn23z7AX
         /POc4+ZbBwcXNVC5nsJkt2MnpThn4DT79TGr5XfSde13QX6YxjSI5DHjcmumWISTAmY/
         3xcBlEw3LYcPoPs/7BNA3SUqPhvRe2vXU+3AxmC6iQaOlfCXzlBgBI+zFGFcdGXsw/VW
         mHq12XzrFOUyeir3WzkQ7FTmRHH+/PWxabuoeUGGHKQCY/O3jpIPq2yoiSodb4f9tZeB
         p1tA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6d87e00ae83si161943766d6.303.2024.12.04.10.15.14
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Dec 2024 10:15:14 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted sender) client-ip=103.168.172.144;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-139-DhjQ4wCbPX6LS0DSbrKBrA-1; Wed,
 04 Dec 2024 13:15:13 -0500
X-MC-Unique: DhjQ4wCbPX6LS0DSbrKBrA-1
X-Mimecast-MFC-AGG-ID: DhjQ4wCbPX6LS0DSbrKBrA
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8443B19560B6
	for <blinux-list@gapps.redhat.com>; Wed,  4 Dec 2024 18:15:12 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 7ECEC1956060; Wed,  4 Dec 2024 18:15:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 7BF8D1956054
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 18:15:12 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id EF85E19560A2
	for <blinux-list@redhat.com>; Wed,  4 Dec 2024 18:15:11 +0000 (UTC)
Received: from fout-a1-smtp.messagingengine.com
 (fout-a1-smtp.messagingengine.com [103.168.172.144]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-647-BGI5wtTuMFmuiH4vGZKDOw-1; Wed, 04 Dec 2024 13:15:09 -0500
X-MC-Unique: BGI5wtTuMFmuiH4vGZKDOw-1
X-Mimecast-MFC-AGG-ID: BGI5wtTuMFmuiH4vGZKDOw
Received: from phl-compute-12.internal (phl-compute-12.phl.internal [10.202.2.52])
	by mailfout.phl.internal (Postfix) with ESMTP id 5DDEF13800D9;
	Wed,  4 Dec 2024 13:15:09 -0500 (EST)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-12.internal (MEProxy); Wed, 04 Dec 2024 13:15:09 -0500
X-ME-Sender: <xms:LZxQZ6V9Gs34P5fMSMGGGS_-lJH12EW1tI7IVHeoHkz0ky4MLKLVMQ>
    <xme:LZxQZ2nZO1MYL0OfAK2Np-Xl0fOzfRXqczFXl5fzZIDvpNWOJtiPFpmVDkWvBBKos
    v4A5Wl_HkcXLYqAWHk>
X-ME-Received: <xmr:LZxQZ-Y__Kd_PBBS6S-5xVqNANJQt4vwwvArWLJ3zaB2JEWluOR3WEA3Y0jLaOTeZVjUAlAQV0KQkvVNdmqHzVQtMmCFEnWlc_Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrieehgddutdeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
    fujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghh
    ihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnh
    epvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeffledufedtnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvg
    eshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthhtohepvddpmhho
    uggvpehsmhhtphhouhhtpdhrtghpthhtohepghhuvghnthgvrhhksehgmhigrdhnvghtpd
    hrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:LZxQZxVFu8g1hgqGRkfUq0anomlsXO_N_lq464EEMHGw_RNB3MKBrw>
    <xmx:LZxQZ0kMbdmMc-_pNPN-gZL_2B_K0BBRYBUqFraaD7KkjuoT_Xc5Gw>
    <xmx:LZxQZ2dtqq7CIASdiIc29QD5bEzQOv-f02kwzr9MtDzGnquOO8rdew>
    <xmx:LZxQZ2GwbBw0JTcv8Ndd0v-DRhsYai1XLjFMJXtg4x_cRDp8jxewjw>
    <xmx:LZxQZ5z5B5yQx-nQ-UDaBV3N0XyY-2BGMWoLWpVw1jhYETj22GYmbc7L>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 4 Dec 2024 13:15:08 -0500 (EST)
Date: Wed, 4 Dec 2024 10:15:07 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: guenter <GuenterK@gmx.net>
cc: blinux-list@redhat.com
Subject: Re: Might 1 of You Please Remember?
In-Reply-To: <94c7528f-df0d-4648-b8da-acadaba3460d@gmx.net>
Message-ID: <24053523-34f6-0be7-50d4-5766ee8dce51@hubert-humphrey.com>
References: <1fd07eaa-8fef-71bb-cb54-8d86c6fb2dae@hubert-humphrey.com> <94c7528f-df0d-4648-b8da-acadaba3460d@gmx.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: gYVrlnMTZe7zJ0b79tzXaltmKLwn45M_sUNuldGikcg_1733336109
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: rwlxfnMz5OvW-nctjZcocmYNlqai7Rz-PxNfsNj4Z6Y_1733336112
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.144 as permitted
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

Well Guenter, thanks much, that was really helpful. I wound my way 
back-and-forth through that thread, however, I cannot seem to find a Debian or 
pip package for trashy? I examined that github page, no download link, no deb 
file. Thanks in advance. Among those messages I found my explanations of what I 
originally did-and-my eventual solutions, but I did not find how I had gotten 
trashy, unless there was a deb package last year, but not now. Thanks so much 
in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

