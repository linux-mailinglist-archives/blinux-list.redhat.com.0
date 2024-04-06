Return-Path: <blinux-list+bncBC3NDNGRUAMRBG4SYOYAMGQE6ZELBXI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f199.google.com (mail-yb1-f199.google.com [209.85.219.199])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3E689A8C4
	for <lists+blinux-list@lfdr.de>; Sat,  6 Apr 2024 06:01:33 +0200 (CEST)
Received: by mail-yb1-f199.google.com with SMTP id 3f1490d57ef6-dcc0bcf9256sf3760121276.3
        for <lists+blinux-list@lfdr.de>; Fri, 05 Apr 2024 21:01:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1712376092; cv=pass;
        d=google.com; s=arc-20160816;
        b=0+hUE9oxpzyweV68+SigS/8BVX727/GycQY/+6X+4S2u3nOmkcdB02uYkdhPZ0YbMK
         ZHjwQORgm7PeMnP0BMSPLx1KU7XQwm5RJIjUjSd8BEN78HdJiEWBk2Z8jnCExtiVbY55
         2fSYxef8hmktolphuVzktpN2phofIfBKNtg160ik7Y/Ufl0z9D6AIBBKWUMBQ/hdaPHZ
         vXLuQp7xn8/4QwjfUV4+CW4h0DSU2twF97UGwwMmHdMuWy5GElYBxzV3+9n8O/trw6fm
         MdqVXEBZhQRiXATpR0PsdoyOYcS93bAU3DmFtBhVF0Cp3zbPfPTdhDQRw+hJ5lMwih/u
         FHOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:message-id:subject:to:from
         :date:feedback-id:delivered-to;
        bh=cU2DzThfTtVByr+U8cD/BbE+8kJAqBy0uc/rOfp7RSA=;
        fh=XFvVOaKBBRnUcizo6vfVDa6XZncw17cgPqKqMw0fmLc=;
        b=QBUDTfHZYqS0/e6LIuTG4wScYDT4r1TYRUOKASdZ7an6NxNOZLVLgJcYrUY8Jw+tRO
         8SWHB1BHz9pBrvtsIxzQO62Cy2IpEKzRy1qRYEh4jQ0yCdulsB8wBRCTFwBQsSf+zjJX
         /uLFgo+fWNEZbV5T02V5S/lWPhO7pv6fuiGQ/agQFG+I0GNDidshFhnhZg0SmO7GWTBA
         +D1EA3uxMIL6lRGa45iVEfOUvRfiiqgDUsKbS8j3MTEV9ThUnZBHJKL5xBhX2cwH3LI/
         cR5wOP4MRLbnNlsFzoGFVZvK3NQw5HArO/6IjY2EBTdizwNwJAJNzJOoxUHIdQGYkaks
         F7uA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.151 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712376092; x=1712980892;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :message-id:subject:to:from:date:feedback-id:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cU2DzThfTtVByr+U8cD/BbE+8kJAqBy0uc/rOfp7RSA=;
        b=b/vZTet+K7061OXvVKO4sHRuGy6WNpdz7HDE0Vaudohtxv+KabLCPGYx5rB4TlrdRC
         +3d8pClVETT9j3TvR4JF3tApI03vBuKsXwLhpfy8TYfViKp9k85sHsUYnBGUfTCySqOB
         SJb0VRPLmDWajCLo2bXVmAgXUcC6MxzeeaovmxUDZaN3xcV+LdgWxHdBbQMlBGQMHWNo
         9kuXlQnbF8J2nm4wqqSy07cE5EvdVVKXhy+TDv3PxsAPtDSuaKs8/Lp2YVZI0o3p4PNw
         7ZXQE2tZfnnHwt2oEnM6W21LkHRA4Y81+BumQeA+MMwx5nqzdWkadRRw5G1E8a6+w4sA
         x1gw==
X-Forwarded-Encrypted: i=2; AJvYcCVSxtmxGTJbnUAj9ULuqwPZPE0bgXJLJijzDlv7OgdN1+pYCS0d2BAqZaJG7cKrqoiRt+NKHHdp49a+NuajgaYPtECWfKoSzDdZ
X-Gm-Message-State: AOJu0Yy+jYqTtd5lOExbtILadRiz80iEk10F9e99J6qGUxQSvcSSRnx6
	HTVbjw+2oZjqnerGQkGFpMoVc7v4IHiZFzY2ZTftw45VU4dEG7N9OO4NRdgqNLo=
X-Google-Smtp-Source: AGHT+IERHB0m6XplATu/R8Zo9Q8qkRCTZyl3IV5qvglgQbIc+l0Q/bynGPQ2FTDJgLtTyVUZIb7SfQ==
X-Received: by 2002:a05:6902:20c1:b0:dcf:c299:2467 with SMTP id dj1-20020a05690220c100b00dcfc2992467mr3542170ybb.5.1712376092208;
        Fri, 05 Apr 2024 21:01:32 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:7e86:0:b0:dcd:202d:6bd6 with SMTP id z128-20020a257e86000000b00dcd202d6bd6ls748556ybc.1.-pod-prod-03-us;
 Fri, 05 Apr 2024 21:01:31 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCU3i8UNgQpgVkVaKwG2d0phw8z+/GSIfsIR7JD+J4ykdoiyVDRlB+LsiUY8eP0lnw9l7doK0x3lW+2h+zuigIl46m7d6hugJuxhB46G
X-Received: by 2002:a0d:e581:0:b0:608:b6d1:c334 with SMTP id o123-20020a0de581000000b00608b6d1c334mr2658616ywe.52.1712376091232;
        Fri, 05 Apr 2024 21:01:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1712376091; cv=none;
        d=google.com; s=arc-20160816;
        b=soqnoRQXelJPBw11i4cLsMNNPU3EnWI33Fa8n1FAatEkeMJUgSFq1G6fFb5Z4VvjW9
         3Yn5d/b1rJYSWkiwXYxtikp9tYcISWzcJySy/jUERbyl7QywbA/7otWiPb1BKxV371sC
         6ARNaCVvVtmiRKL4mrsqsmi6xldosLRycTUeGsQyLIbcumI8vmnP/fG4LGCgEczOzw7k
         9gSt081wTb64oqov0aHqHAACYCzuX2+tj4alXFMnb8py8bYzqXWqYSMukb+L5t1aTKaD
         RV1SSqDjvzFoMUO38R3eBRoM+/Uuhov0mnKAZRpdD/Dle+xtrATBleSt8iffjrtHuGc3
         q6bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:subject:to:from:date:feedback-id
         :delivered-to;
        bh=Ib+sN5yafDEKGKJ9i3GGx+RukdPg7rKFzAr3t9CWRek=;
        fh=PmA6iCFgUoqrqU6x2M9dR3vZbb+FlLGidi4NLHtSolM=;
        b=CF2sXQ1aLuNlvKm7ZEzR49fwaEgd4l7NJMR5NsSWn5CLwYM4o7tWy0I+nI2Qx0xWUn
         xs2GaC0v5NM5F6oyLAw4vbGa4EXYoIGOcdTeL5INptVuJOcBpslL3ka61cJudU3m09zh
         7lIWjiL1nYrt2zPjlCtigsiQZCA6RWISJxkF3Pd8DO686B1yppUvtHEZNqyhxP2UzShR
         TKAClkKDv79tk/T0iMcclhFgsbT4cWnmQ8JLuEUm67Rd6+in0UMFHkaOpNXBL3jFmHhZ
         CRZLDFXnp71HuE3efBYfd8+vKnjR86fsEoPSkU7k6vP5aCAPWvewv3EsD1mLjBd3pURq
         AO/g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.151 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com ([170.10.128.81])
        by mx.google.com with ESMTPS id bp12-20020a05622a1b8c00b004343ed389c8si3276204qtb.684.2024.04.05.21.01.31
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Apr 2024 21:01:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.151 as permitted sender) client-ip=103.168.172.151;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-3-EmSSbgM8MV2cSGuyZX6--Q-1; Sat, 06 Apr 2024 00:01:29 -0400
X-MC-Unique: EmSSbgM8MV2cSGuyZX6--Q-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com [10.11.54.2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3484285A58B
	for <blinux-list@gapps.redhat.com>; Sat,  6 Apr 2024 04:01:29 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3182E4043841; Sat,  6 Apr 2024 04:01:29 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EBAB24043844
	for <blinux-list@redhat.com>; Sat,  6 Apr 2024 04:01:28 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 955E685A58B
	for <blinux-list@redhat.com>; Sat,  6 Apr 2024 04:01:28 +0000 (UTC)
Received: from fout8-smtp.messagingengine.com
 (fout8-smtp.messagingengine.com [103.168.172.151]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-610-HvDKNc5-Oz-20N_eH762ZQ-1; Sat, 06 Apr 2024 00:01:25 -0400
X-MC-Unique: HvDKNc5-Oz-20N_eH762ZQ-1
Received: from compute6.internal (compute6.nyi.internal [10.202.2.47])
	by mailfout.nyi.internal (Postfix) with ESMTP id 9A03013800CC
	for <blinux-list@redhat.com>; Fri,  5 Apr 2024 23:56:17 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 05 Apr 2024 23:56:17 -0400
X-ME-Sender: <xms:4ccQZrOIyN9GX0T4v4IpAfl7gWfpwhRyDPfoG_zdWm5jHI4ZiV9PoQ>
    <xme:4ccQZl8iLfo3flM1d81HP0nzMIPXmtRThzUDTLrWw8CndlVdYSJvoV18JxND7Iqq4
    6UJteRqvWOQVeevrx4>
X-ME-Received: <xmr:4ccQZqRUDRsZz_qcVo2Hzb4zW8V8d5ddVjISc3Lc6Sg195Q06yuiI3kBGc23BiuA8AZd3_HzPC8_n_hZhJ6JeqJIzj8joA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudeguddgjeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgr
    rhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrf
    grthhtvghrnhepjeffffdujeelueffieevtdeiteettdekgffgkedvueejteektdehfefh
    hfdvteeknecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomh
    eptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomh
X-ME-Proxy: <xmx:4ccQZvvNywI2dBqLBF_J8Pm5yLI9GelrhHXQBHJ2GvB665coOKXRzw>
    <xmx:4ccQZjf6fRWdpjDQfOemKcdn7VcWWiqjtzIQU3eVWYHVFJmU_LsUmw>
    <xmx:4ccQZr2PCzOrzbQhjcCB6YXf6_5bmABrgYEs6l4ui9V9AoHSO6TUzw>
    <xmx:4ccQZv-S6fl0kTRFDDMCocPdF6JD2Nt2xw-Z9wHtlz7i9m5-aPLJhQ>
    <xmx:4ccQZkp3YxMgjMNEFL1Dup2JJ8SzpVPG_sqa9UTM-MKtArtOIWEYZC82>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA for
 <blinux-list@redhat.com>; Fri, 5 Apr 2024 23:56:16 -0400 (EDT)
Date: Fri, 5 Apr 2024 20:56:15 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Blinux Discussion List <blinux-list@redhat.com>
Subject: Arch, Fonts-and-Fenrir?
Message-ID: <b4aa6055-a9ef-9373-2fa8-912b670c8c74@hubert-humphrey.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.2
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.151 as permitted
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

Hi All: Since I switched a laptop from Debian with Speakup to an Arch in 
Fenrir, I only have 67lines, where in Debian I had 135.  I've been trying 
suggestions from Didier-and-Storm, also alot of searching. Several fonts 
actually seem to knock out incoming speech but for some Fenrir insert+features. 
Also, sometimes I cannot change consoles.
Is Arch such a different animal that I cannot have an increase in an amount of 
lines.  My Linux expert says I would need an 8x6 type font. Can any of you 
suggest 
a solution please? TThanks so much in advance
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

