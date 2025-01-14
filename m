Return-Path: <blinux-list+bncBC3NDNGRUAMRB3WPTG6AMGQELR5B46A@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E895A107E7
	for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 14:34:40 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4679fb949e8sf9928321cf.1
        for <lists+blinux-list@lfdr.de>; Tue, 14 Jan 2025 05:34:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736861679; cv=pass;
        d=google.com; s=arc-20240605;
        b=WB0MvY3F1eEC9PuPKAeaKcQfSf77NJOzR5dAgmYPZzuzHbr02PvuY56BpRdsqXgEGR
         tf+IzPhrqcpTU4PEZe7R9gq454d0QymGYbu0HTwt4562mTqTbEAa8W8RGYuMW4XYEDw4
         oI1VUTwaU2K60r9cwrolOH+9TEY6UaAwBWv2U3DtAovq7Ksl4Y6+geeUb9cWLw9hRAzY
         4isj+UgHtwHwYlNdu1ipRgHZMekTmzydJzLsEQmOWzj37KIZ8kOvddjnC/JVgAdi5jES
         NnY9X+gRzuyzw6hCzAcqhIl5iSkU0m9XbJEAgonTQ8/vnOOL1DBz22DC88vvyVExf03D
         uozA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=2eK9wdvZlJ5g8q2QHvM0OgptXya2AfSuoQbAhEe1+eI=;
        fh=dVPzHT9VN+LGKjumlflVFii53iuahlsjZQUga4lZOZA=;
        b=NFvXcgBJOHCnozSE8YGahFnZWQGAQiZTgUTj4MciiTcxYUEc0AiMkLHx9RGk7T/mhh
         ZJob2Z6gkkD7AbgQqVXv3VGVTBuJw67ABU6/1JUuO+Z1cs44OQbHrMsyOnZ/Ad4amDIg
         vRzdBpFacVeO/54a5ykxCOi7sB31oYP0JGNnzb9dRQqowhsc65mqBlrrCTLr75yiL9vm
         tAnclVgZLc2gn/Ut3cRaKxzdxEmChwYRdaxbnrBOFYusa74OEcGWP3C2HYsiJPioAyXR
         mjs6jWFmHCO11fndpOYaaf/Rl5bjjYMtfxlvy9Fe9+XwIuLhRekK4dnz1s5g5yZVf4V2
         n1Aw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.152 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736861679; x=1737466479;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2eK9wdvZlJ5g8q2QHvM0OgptXya2AfSuoQbAhEe1+eI=;
        b=v41NuYz239Q7eqqB3HuLnjhGBLBHtq4Khaj1b3fg+xHoR0KdkkIT8jgQd2aQnAJQgg
         XIUYJWsg2jW3H2f/NdGID0zEpCgmnValXbO3FEz76SDK1BjqLjD6X5wCwkQd0KPh7TDu
         WBWOLXFT+LoS8Sj2cd6YJk6/KryQseFExnEHmhCHIAR1Otu5xGM2OZWIXIb8F1uNfA+d
         tLyvW1eFVyiV9w7AKEsvn3E0neciAKfsytgiOMAfvT1tVaMyZFuxrgnAhgVEx5Eugd7o
         9FVRQjEyyvRVR6blrbxMyo018UkD8e5gwv2fIUZNpKO4ZOqsD4u1zAHod+CXkmQ4N4bB
         RNzQ==
X-Forwarded-Encrypted: i=2; AJvYcCVtGyMxymq5PomyJkDWvKDwGQfnk9ID9kfOTB3gz9YbkUoyXXKxCeA+rTm4+nE7otoJhYckLw==@lfdr.de
X-Gm-Message-State: AOJu0YyqyFU7QsPMgZPVJQj4daWmjwQ/4CwaazwDD+ih43khARhci1Jw
	WHhwwj6lGABkpdx7XrvGaE3dxqtVpvumAQLA1Fp5Jpku54eKFNWJnUx1b1zfEmE=
X-Google-Smtp-Source: AGHT+IGlhaJ7hu1yUvkwy1SW1wqz54XTAKChhUZ8YMKZ74FfZtyF2sBEfb3KmPYQLpRR6kXxxIIKrQ==
X-Received: by 2002:a05:622a:1a8d:b0:467:b7de:da8c with SMTP id d75a77b69052e-46c71079beemr140968391cf.1.1736861678589;
        Tue, 14 Jan 2025 05:34:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:9e91:0:b0:6cb:d4f7:64e0 with SMTP id 6a1803df08f44-6dfa37d106fls27942476d6.2.-pod-prod-09-us;
 Tue, 14 Jan 2025 05:34:37 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVrgAoPyG6jTcswp8PoPoTEXbd2rA+xTv0AMVBDAI1fALBd4LokCgMn3BmOoK6lk8azeuZ+bHWY0lZgbg==@gapps.redhat.com
X-Received: by 2002:a05:6214:5290:b0:6d8:7f8a:73f5 with SMTP id 6a1803df08f44-6df9b22e19amr333129206d6.24.1736861677536;
        Tue, 14 Jan 2025 05:34:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736861677; cv=none;
        d=google.com; s=arc-20240605;
        b=P7CL/8R9i7kbgpln8wusfCQOd0LvwrvoaRO5aW2tR7T24Nf8Cdt+rkrNkifanv3LKR
         6GIytS/wrL0h78oJksWko+fQaR+LlISqAqHVNaUDMkZiq2Q0ctuhrGplGKluOlLuQX3+
         GlP8vIN3U8+pnrrEqaihOYp8cKppyXqI18f2BAZ5fCcZGaNx2NQ9larpRZh1mLfFXbxM
         BEuxuZzg3KTYCBYoCJ6oNHPwGYi2hqOd+wPT53Pn0bMvyGEuKYUyfZ/wbwXceSJRa+e9
         yF0rUqPOjLgKICy9S/PTzmLFDdJi6f5tmD9k0eym8ZNIIpTbrIsVXs3U/WVfyFBYoNR/
         gwtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=l03qq0N211ELszCZ2UBgWyS3Grg+R2Aqin4CyWIIwg0=;
        fh=acIAZSBwH7DpH05vOENoHG8KseGtO+n2+wos9RozPDM=;
        b=aJvSnDN2whyxwfWTq8xkn9ZwkdnehywusIhVbhqJne3STOTvT51wRCpCyKqKoFgow/
         X15u5UuWz+SZbM0jZslIWAWeQaAcryx8r0QzxTYJBkH1Lt2C4q0JiWmDlInkkCK8qQp6
         zBri/wSdm5f91/1TNmKahD8gS6aHEL7xpWhxggeemp9o0VZ+0RKF1/3jtEbEaAKXjyGW
         d//TS/3MfLEwXzMfej2i5gLh4eP6WulAjRe8VqCdH1jLS0i6ntx09IVx1qIviXd+YDi1
         e9xo8VRTlWjwp51U6L3VKfLcFdz+VSuL7uNI+nh4O+5Akm1hRkI8MahOJDSnIgF36vg9
         BL2Q==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.152 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7bce35096aasi1500211785a.524.2025.01.14.05.34.37
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 05:34:37 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 202.12.124.152 as permitted sender) client-ip=202.12.124.152;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-369--NCPFwVqPe6tjpwj2q28og-1; Tue,
 14 Jan 2025 08:34:35 -0500
X-MC-Unique: -NCPFwVqPe6tjpwj2q28og-1
X-Mimecast-MFC-AGG-ID: -NCPFwVqPe6tjpwj2q28og
Received: from mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.17])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 938E31955DD5
	for <blinux-list@gapps.redhat.com>; Tue, 14 Jan 2025 13:34:33 +0000 (UTC)
Received: by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 8DE0E19560A3; Tue, 14 Jan 2025 13:34:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 8B2AD195608E
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 13:34:33 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 11F741953944
	for <blinux-list@redhat.com>; Tue, 14 Jan 2025 13:34:33 +0000 (UTC)
Received: from fhigh-b1-smtp.messagingengine.com
 (fhigh-b1-smtp.messagingengine.com [202.12.124.152]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-690-5ClYnpQ9PlGUML2QYhV_Gg-1; Tue, 14 Jan 2025 08:34:30 -0500
X-MC-Unique: 5ClYnpQ9PlGUML2QYhV_Gg-1
X-Mimecast-MFC-AGG-ID: 5ClYnpQ9PlGUML2QYhV_Gg
Received: from phl-compute-03.internal (phl-compute-03.phl.internal [10.202.2.43])
	by mailfhigh.stl.internal (Postfix) with ESMTP id 256DD254015B;
	Tue, 14 Jan 2025 08:34:30 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-03.internal (MEProxy); Tue, 14 Jan 2025 08:34:30 -0500
X-ME-Sender: <xms:5WeGZzVFAirjeozjLQDUDYCR6n_TKTQNq4-v_rsHdnPngNp6nx0twA>
    <xme:5WeGZ7kx9_fsgOkd6P1YeAjq1KIYW9lf9ssV4VRRh4XwB_Oale6_gZN5ng0XxNhXa
    kKVJ8079s_g6NMrvCA>
X-ME-Received: <xmr:5WeGZ_a52ObemiqowDSjqpvPk_-aeCt1X-j1QN_STKD4v0J5vDMc33K_CjP1r0LG9YuqhOePYEw728BW5ClKG3MhYQyP5tgRx9I>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudehiedgheefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddvnecu
    hfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumhhphh
    hrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeejiedv
    keekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhrvgih
    rdgtohhmpdhnsggprhgtphhtthhopeefpdhmohguvgepshhmthhpohhuthdprhgtphhtth
    hopehorhgtrgesfhhrvggvlhhishhtshdrohhrghdprhgtphhtthhopeguihguihgvrhes
    shhlihhnthdrfhhrpdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrd
    gtohhm
X-ME-Proxy: <xmx:5WeGZ-WdBQnrgSj0CeXrwcjuMc-ZawPt5Pn4QUub8y19nN_FnZwDNA>
    <xmx:5WeGZ9m8n0Q2F4ztCat2DAOjSFg8y7aQExSZ6H5RCZo62ogpPOcPKA>
    <xmx:5WeGZ7f6oILYcVmNuoZofUFiFTdBgjfodgVJxN3UodM8YXUAReY8Sg>
    <xmx:5WeGZ3G7HIVI4pDrJ7-Ed_qTu2fDuHNe8cqFRd2wms6a0GL5AOwUUQ>
    <xmx:5WeGZzhgk53Ly63_sUm9ZKyIuOa24GIx8yTOt8cdV8RnMA0HYZ8NuMRq>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 14 Jan 2025 08:34:28 -0500 (EST)
Date: Tue, 14 Jan 2025 05:34:27 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: orca@freelists.org
cc: Didier Spaier <didier@slint.fr>, blinux-list@redhat.com
Subject: Re: [orca] Re: List problems and a suggestion
In-Reply-To: <fesoxhx7g5kob6t4gmu54mwcglavzqg3hnvn6nbxm7om4phbfo@aclcfl3xj4op>
Message-ID: <7dee1df8-60d5-9af3-76fe-addc9f4ec15c@hubert-humphrey.com>
References: <MTAwMDA0MS5jbHVs.1736523986@quikprotect> <8e04abaf-e64f-4d80-b2b7-8870d0eb5429@slint.fr> <fesoxhx7g5kob6t4gmu54mwcglavzqg3hnvn6nbxm7om4phbfo@aclcfl3xj4op>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: -uutjF_IkgNuSE8m9NEnTNHZO8taBMewEcGVHR7uqYQ_1736861670
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.17
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: EU__t9Gy-pOmqIQTDR3qFMeDH9mY2gRl80ho1UI1bOE_1736861673
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 202.12.124.152 as permitted
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

Well Alexander-and-All, I just subscribed. You sure must click all those check 
boxes about privacy. Later after receiving a confirmation, there was no welcome 
message with info on how to post.  Also, some lists let you just reply instead 
of fooling around with a web interface.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

