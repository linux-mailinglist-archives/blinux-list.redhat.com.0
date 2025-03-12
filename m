Return-Path: <blinux-list+bncBC3NDNGRUAMRB3MAYW7AMGQERNLWTKA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mail.lfdr.de (Postfix) with ESMTPS id CF7C5A5D7C9
	for <lists+blinux-list@lfdr.de>; Wed, 12 Mar 2025 09:06:07 +0100 (CET)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-47689968650sf34494591cf.2
        for <lists+blinux-list@lfdr.de>; Wed, 12 Mar 2025 01:06:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1741766767; cv=pass;
        d=google.com; s=arc-20240605;
        b=EKQBZRJcK3bylF2VBWxk2RxkW3D3swZiMU7Qc83LI3VeBAtnDQhLxYLc+OCsB7JXq9
         iZUw6iRg07bsty8axIsOmJoU6fo3+/MYgRPiRC8CA79oGWZcvu88pD0wWGDoVuS4XaFE
         XgcMCElWFh3lrK8ZOe3Ob6WeU9KLdFrrQm1LzkIknhCZ7cRVBeFIUSpeXN9ftkChNwhq
         jQO7jIkZ9cu9dHsud0NzLy3fxSKNq+5T6wnOoaeDu0Lw8nUiYRHR6ec9sJWoYlD3tkKm
         1OMc5WMuJqvmGeRdZb0xD9Dp6cNdjLZm7QdTsF0dF2tzypuU71ufwfiHk3O7rsHXqsqk
         OlQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=UFvvyfmDHksBX8L2A2GG6oJLkVeNhTV7FA23vgs07s8=;
        fh=toGKH6YSZslBuNObsIe1Ma5y+plhzFNDwtvz6aTfIoQ=;
        b=dsaKNqwCcznh+xcRyaIibnoGNVrh2bSSQCW+25itC4c3vbUNAeLWEnC8KWERNOw5r2
         YC6/uWfe/AAPuDgCPCpGeMObOq3/8sPeHMVR4d9H/SlfTBogBtIe5OunuDnMAggpJBp1
         uiEC+3ZbEJPG2xQrzTnMCGXUxlYu8ktefJR0igptRwIUBrNnkcNwZJgKZKWD3iVjGMoD
         UzAJN571ZTD5A6KWWh0/Q54YL7oCleyKRGKL5wzRLPulUm/fNUtKjxYvXn+g4fpwdBLX
         2K58zdPfhjmLZ/BC5ezgMlwd/VAvfPGvhsNgCrmd0TfmMbCFTB//Svxqj5dhtIPOza1B
         LdMg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741766767; x=1742371567;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UFvvyfmDHksBX8L2A2GG6oJLkVeNhTV7FA23vgs07s8=;
        b=Gja460VxRrAfEZrBIEVYGGaIDHwv6h3EwOyi5h5yKS2N7s9UAbjgQDRDMZwMBL9avC
         lEIdoGoEbH8gdoDiuzq/ZwqoeDP829ZPNMNWwf516JhxxcbVybHrYFS5lQnZmNf27Qio
         AmJdG1z8erY+4PZ72sRx0W4G1bR17/pTrS6P7WxLpaEO0vkpauAykJUaoUHDphCV1pZG
         KsrlrCSAZHuYVHUh+9yMIT+Xu+FKrLK0YhKOxnrJDGjrvMBmIPE8yR29dZd9GV5y3mQw
         E0DgH63+A2V8kqZxt3myVVTmPUYJEMfcURmEIfjTx31JFmGhFggwBmk037Iuzsg2sx6R
         pG2A==
X-Forwarded-Encrypted: i=2; AJvYcCX0b3KhpnTRlQGWXPuZLd7xaIIyjEfxFP+prRQPK79hRax5HDsuF6xgsM8KbcewO/Q7e6/CdA==@lfdr.de
X-Gm-Message-State: AOJu0YztitKT/+eHvyGlRKWETb5BUfmqRQbU7f5Vf+v5TNQEwidXpi+9
	B15Jv8tq7xdY7XwjKls5saVNvAjbk+ue5P2leLxCpyWpwot0YobyB3+keRZ46EA=
X-Google-Smtp-Source: AGHT+IHbp9Ww0TanthnPg2IafHMVN3NOP1mXjXhKs3GohHflrqDqolEJkXcfW3czF7VpdpaRw0v3Tw==
X-Received: by 2002:a05:6214:2425:b0:6e4:2d8e:5cce with SMTP id 6a1803df08f44-6e9006ed87cmr371629196d6.36.1741766766506;
        Wed, 12 Mar 2025 01:06:06 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVFQlWaGFcHSGF4BIkIqVscYQMIgUK2sU86eYaEPAbn4dw==
Received: by 2002:ad4:4c10:0:b0:6e8:f2bd:66b1 with SMTP id 6a1803df08f44-6e8f4f08b23ls91374056d6.2.-pod-prod-08-us;
 Wed, 12 Mar 2025 01:06:05 -0700 (PDT)
X-Forwarded-Encrypted: i=2; AJvYcCXAkOOS7wKp8UzA5OHQzZAJNN4IM+naoo8zBH6SN02l9MSqKspuZzXNIMC1JZCm1dTDurlViGa2RL45Aw==@gapps.redhat.com
X-Received: by 2002:a05:6214:250e:b0:6e8:f88f:b96b with SMTP id 6a1803df08f44-6e90060157cmr265788596d6.9.1741766765345;
        Wed, 12 Mar 2025 01:06:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1741766765; cv=none;
        d=google.com; s=arc-20240605;
        b=PexR8uPsII/WGMbDIf5fIbRSq8fcJULOKnMPrywCLh/JeW2pAjzenOwaDFGZCTQN9P
         mGnglCyfNVjo2spWB98vHx3zt1M4nt2m3idGEPnTsYXAD/kImm87MvCgql0KYv+30M8F
         nRfUXU2Jfn/9RWjSZH/NEvfY8aaaAdlBW1zARKLJwfS3+m38Xdxy+is/VpcYNnlCPyMH
         gSGzIZpKD3YNhRBQPIKXAdV85l9ErJlWC1uMSxsp17/bOuRFp8dYuIEZCWAuymza17F8
         nieawBNN2tFrbanmmax5k5KclEtxBoNL4nkRn6l9eTXCr50PUZRLW3MNVB/yZ/VA9eiL
         r9bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=I6uGRkDhB6WBJTnauDSyNov2KRhzGO9mqqN7gAS+wgM=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=k+YSEa9qhTzlayBaKskNy1FgmIcBuMOowm34wwApBKUxFxXOpStuL1UnNcsY58j9AL
         xQNPHHMAla/UuVxk2vyq24rATieCgjg67jYDtsarsURyz+0gSSUzhLh50lepWisqv7Qt
         sFGnRO4SFUlfgAucyDIDvHrV3oF+O+eKerzFpblJEEYelL05QLEdB8a3h8iw0ror1n/C
         WlY2WrnjlQPWVlgENmS0ZxnFv35qcYY9QxweCIxyKMm0TtQyjzWyrKF70ZXc1O9XgFn5
         nbQ7meTXdsFvX3TnD+SAhLcV88IO/NF1PzQ1kPvyyenMLVf+85NNu2mecTtAyM2p8hup
         GGUw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.132.61])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e906fd47f4si95336086d6.90.2025.03.12.01.06.05
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Mar 2025 01:06:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted sender) client-ip=103.168.172.159;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-538-USBVYwIhNayL0FwRYvkKCA-1; Wed,
 12 Mar 2025 04:06:03 -0400
X-MC-Unique: USBVYwIhNayL0FwRYvkKCA-1
X-Mimecast-MFC-AGG-ID: USBVYwIhNayL0FwRYvkKCA_1741766763
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id E33191801A1A
	for <blinux-list@gapps.redhat.com>; Wed, 12 Mar 2025 08:06:02 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id DEB3618001D4; Wed, 12 Mar 2025 08:06:02 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DBDE51801755
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 08:06:02 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D2D7A195609F
	for <blinux-list@redhat.com>; Wed, 12 Mar 2025 08:06:01 +0000 (UTC)
Received: from fhigh-a8-smtp.messagingengine.com
 (fhigh-a8-smtp.messagingengine.com [103.168.172.159]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-372-WKV35nbpO5SFxHBG6pqTxA-1; Wed, 12 Mar 2025 04:05:58 -0400
X-MC-Unique: WKV35nbpO5SFxHBG6pqTxA-1
X-Mimecast-MFC-AGG-ID: WKV35nbpO5SFxHBG6pqTxA_1741766758
Received: from phl-compute-09.internal (phl-compute-09.phl.internal [10.202.2.49])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 354541140305;
	Wed, 12 Mar 2025 04:05:58 -0400 (EDT)
Received: from phl-mailfrontend-02 ([10.202.2.163])
  by phl-compute-09.internal (MEProxy); Wed, 12 Mar 2025 04:05:58 -0400
X-ME-Sender: <xms:ZUDRZxr6Tr2gFzKwmY2JkDxkHNnk0DPA_nCvYw5Otx3gihd5TptT7g>
    <xme:ZUDRZzr1QfPt1Vy_rgOvft3vyfp9oOXnAsGNRPsnFdOcwXVtScoaa9J7ok_DMFoGH
    N03WPhir8dx9AVpmss>
X-ME-Received: <xmr:ZUDRZ-PdPyq2QMdHuuIHVzWH3EQgSdzGCMykx5_761Mo1EeCGf-F_uGGWRNIRhlXd2ndXRnEdYFcD6J4NrI9IMirOrHGQ0x2154>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdduvdegheehucetufdoteggodetrf
    dotffvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggv
    pdfurfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpih
    gvnhhtshculddquddttddmnecujfgurhepfffhvfevufgjkfhfgggtsehttdertddttddv
    necuhfhrohhmpeevhhhimhgvucfjrghrthcuoegthhhimhgvsehhuhgsvghrthdqhhhumh
    hphhhrvgihrdgtohhmqeenucggtffrrghtthgvrhhnpedvheegleejkeeguefgfeelkeej
    iedvkeekvdetueevueeffeffffefffeludeftdenucevlhhushhtvghrufhiiigvpedtne
    curfgrrhgrmhepmhgrihhlfhhrohhmpegthhhimhgvsehhuhgsvghrthdqhhhumhhphhhr
    vgihrdgtohhmpdhnsggprhgtphhtthhopedvpdhmohguvgepshhmthhpohhuthdprhgtph
    htthhopehklhgvfigvlhhlvghnsehshhgvlhhlfihorhhlugdrnhgvthdprhgtphhtthho
    pegslhhinhhugidqlhhishhtsehrvgguhhgrthdrtghomh
X-ME-Proxy: <xmx:ZUDRZ87Xsgo1Aef-jgYDFVJIljeafUHBOXST8B_9b2t01xK7B19oag>
    <xmx:ZUDRZw67NA7RyB7fNeuBwj_BcRYnSmBSfapJMyGSINdcTTdPe8zrgQ>
    <xmx:ZUDRZ0jVUIIu3t7gvWsD2UaEjribnkGbedj39Bo9WeVB8DTuEiatig>
    <xmx:ZUDRZy4RB51iJgH32F-fjCYyqyfy49199dHzjz_5istUPuQMI_PzwA>
    <xmx:ZkDRZwHcygzkWOj8z1HaMBYMhgxb5Nq1w7ue-y0cNvujFvwxJQscXUcQ>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Mar 2025 04:05:57 -0400 (EDT)
Date: Wed, 12 Mar 2025 01:05:55 -0700 (PDT)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: youtube dlp?
In-Reply-To: <Pine.LNX.4.64.2503120105090.3554148@users.shellworld.net>
Message-ID: <cec0f749-6186-13ba-0d9d-b08e9758f5c2@hubert-humphrey.com>
References: <Pine.LNX.4.64.2503112329560.3552976@users.shellworld.net> <35d3aae3-ad01-1f78-a426-dec2332a8f5a@hubert-humphrey.com> <Pine.LNX.4.64.2503120105090.3554148@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: M_CymOYmhEDvDV_X9JCEr8Z1ESTOEXTxs0hUFSX9-ds_1741766758
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: xvWt4QYoYeLHhWowauxMJRcDs50Hg9BPakO_7dsq-NI_1741766763
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.159 as permitted
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

Sure Karen, I understand your concepts, however, youtube-viewer you have 
several choices, listening, watching, or downloading. As far as a script, well 
I have an L Y N X external which will either play a highlighted file or 
download it.  I also have an older script to make an mp3 from an url from 
youtube.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

