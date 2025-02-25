Return-Path: <blinux-list+bncBC3NDNGRUAMRBDVP6S6QMGQEFWAKTAI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A3E7A4323D
	for <lists+blinux-list@lfdr.de>; Tue, 25 Feb 2025 02:06:24 +0100 (CET)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c098c6c0casf116438785a.1
        for <lists+blinux-list@lfdr.de>; Mon, 24 Feb 2025 17:06:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1740445583; cv=pass;
        d=google.com; s=arc-20240605;
        b=kwoNr1/QDBpWkLF47FBndfcxckE+nAiVOdRxbSMhPsi+c2wgh+eudQvy7dbnkzcSgO
         uzVIXamAMg5KXwhLgFTxAT8z203ZSjwOQQV2oJ6nxZk9FUVer7Yg2/TzNg7SdG1i6mFd
         knLl434AvdWMSk2BhF8zVaIEABahRbNg4vQ1DreVQFujlj3Y+UVMnYR+TWWzkEuEBbhZ
         ztmxJzPizYvwrGQYIhaKSUIfpcmmP86vIW06jtXVlQKrqZXoxRgLTaC3/bjssOOWu2OT
         Dam9F23MzNGLMm75C0wwcuEyC35froOuCgOT9MmpU8UXH4uwSEzrB9L9x3VkzKm59VP3
         NjNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=GS8G7sXxrO7ZbAH0jli/+p42fQvLR4ViDlBsKYNJNZs=;
        fh=/wX97RroCRQPrDpATCaEJlYLCYq2Q/eVBRrtbt46bEY=;
        b=F4l3qj9+ZiuNOi30w60tCQKz929FZZD0k/a183jG/LvtHAkYxvsoHNtv/0ekaomEUZ
         XdN4bjm947aoQDUvRahg121jMxdLUWnqHOLCm8k5LnevBGNy63da0wp/OrtvpVQnJU4g
         qDyj9uWNjxOOQmbFJ1W7KSwETfrOQVvWaNunieF3xpuyOe8Jv6LNRfFQNEZVi0jZw4Rr
         LhFoomgcdoEgrKvl+VnTmf2yNz1eIWhj27lrUoGYLEYBbOJLazmyuv2TnXNXwJANHjnv
         k8AT8CHXc0N384456h66Y/O7muxmZKoUVFeIpayOO0jzg6Ysm7TF3Toj/VpGH4AIVVCz
         FJdA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.146 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740445583; x=1741050383;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GS8G7sXxrO7ZbAH0jli/+p42fQvLR4ViDlBsKYNJNZs=;
        b=ZKLiWcoqsf7J05x0xHikEmEORAjUOrtEn8Vd45337aPDM/gV7iW+9kyfoQ00yCQx38
         mWlfkew0wZU5Rly6lrTNcj9g4TlJ8DEWh2MslWQ/7rUlKjl8GWE7ZARyCqx3rIyPhK9+
         O+nv4hsas28Nb/pL+DkhijSWLetoW8XqrCG0bU9dik2eWo5sNpNnCzxlsmAJev0mDDKD
         yXeOlH/dqs3hOOWmuAj8/2nSKy2eAGb1rV5ucHRjKkzXnD8w43/7DwNFOsiTx5M8Y95d
         REWJK876I7zpTc9Dfuf8mJJcuz9BwENdZFQrZXP4YpjaaWa85ouJB9v6N2mYVFkP6pVQ
         tl5A==
X-Forwarded-Encrypted: i=2; AJvYcCVVEDo3mYOJZAl95XPq1RGNFGy08Fr+OXONRPp7qT7odgvgkaJ9NpI7cWITNXvnJBD/pJ18Dw==@lfdr.de
X-Gm-Message-State: AOJu0YyarTFr4+UAjG/91JxBTIHacLLqAl0Bsfy5XXAjJUnmcBChA+dE
	a+HXssarQv9raLXsGiWv0LnyHHCJ2SiIJWU2pH3OdMc1u2Msplbtm9nljLsMoxA=
X-Google-Smtp-Source: AGHT+IH4VFzr039hS8ViBTtXNJz8+x7AOIYwTNIgqIqpikInEIO4yo3xHA9Dc3HY07WNFza5MT4Plg==
X-Received: by 2002:a05:6214:1d25:b0:6dd:42dc:5 with SMTP id 6a1803df08f44-6e6ae9674ebmr71772526d6.7.1740445582885;
        Mon, 24 Feb 2025 17:06:22 -0800 (PST)
X-BeenThere: blinux-list@redhat.com; h=Adn5yVF2GKwHNBJQtyFdbZhbn2ynsK6EMhkJVmQwtDDfTvwnRg==
Received: by 2002:ad4:4d83:0:b0:6e6:585e:f96a with SMTP id 6a1803df08f44-6e6aec3ecd9ls31533916d6.1.-pod-prod-02-us;
 Mon, 24 Feb 2025 17:06:21 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCUkD0knk2T1Kc/2I0Df21/+lHTYs2HddY9soRhwkZ3CXkfhgsbGtyRuxChfGNqOzGwHTbtpNOOrenj/PA==@gapps.redhat.com
X-Received: by 2002:a05:6214:518e:b0:6e6:6599:edf6 with SMTP id 6a1803df08f44-6e6b01a9df1mr209221776d6.34.1740445581703;
        Mon, 24 Feb 2025 17:06:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1740445581; cv=none;
        d=google.com; s=arc-20240605;
        b=BQ5A7PDtNtbog2sYGpun5m01i2ElR/h06hX17yP0mTzOgbfCt4aXRun5QItQEY2xU4
         kxMfDhHL/tr91mLlM1orwclBkvE1csQqjSqpBdD4KwJLEtmtOVkYW3zDf6pMKpKX0Wv8
         Ttj6HrOt7Fe5At9SSb9IOc0ABH7pwqoCC/CupM9A5b3GQ/3ali5KqdRHUQ6MeH+E5Rxb
         /Ukn6FYrIvG2/bJSG9wTkGzekUw0PM6siIAe/GoUMG+N8A8Vp19wr2mwyo2lPrYN8qfr
         xmmRuMToHFKBk9ZjNr0mA6bztF/Zm3EmfKBNBVx5hmi1DpbMGrNG3v0VEuQuWhNnx7Ke
         e2fQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=+V9QnDcmdE2Z9DRGwJpcLCbFymo9+sQk9ry9tzj3M8g=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=a6wij8oZzG4DzskksCu+LVdUxLMgODBOxo4AiBs0/fiTb/o5fDpph+MrLHao4ZyHAf
         FSV9/bvKz/QPZFGLj1Dha6fPiWsBuezX3t1gXe/J2gM3qyF4EBwZwvkCll6NzUnd9NYZ
         BSOch/A88KDWcIjGSNenGC3eGPcPx93/sbznsfR6fVOhEK5jL3z/+GfLpqaw26T+2i0u
         HKwYov6LAuAWMRSo04tDdnjFIhGq9hOmtJA3oMzyX7s2oTiESaabaPBBNImLTM0nlH+M
         xyJucvq0JZMOpFyaXXiAHLtUOAYVV4rc3pspDrbFjBp4rg/HHNWrJKiC1tJsD8uVlZln
         qFcA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.146 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e87b0c4e67si5472096d6.245.2025.02.24.17.06.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Feb 2025 17:06:21 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.146 as permitted sender) client-ip=103.168.172.146;
Received: from mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-35-165-154-97.us-west-2.compute.amazonaws.com [35.165.154.97]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-269-XQ-l0i04NY2iC-_dqVAttA-1; Mon,
 24 Feb 2025 20:06:20 -0500
X-MC-Unique: XQ-l0i04NY2iC-_dqVAttA-1
X-Mimecast-MFC-AGG-ID: XQ-l0i04NY2iC-_dqVAttA_1740445579
Received: from mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.111])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 312FB1801A0D
	for <blinux-list@gapps.redhat.com>; Tue, 25 Feb 2025 01:06:19 +0000 (UTC)
Received: by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 2C48E1800945; Tue, 25 Feb 2025 01:06:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-08.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 295A6180094A
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 01:06:18 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9D62518EB2C9
	for <blinux-list@redhat.com>; Tue, 25 Feb 2025 01:06:18 +0000 (UTC)
Received: from fout-a3-smtp.messagingengine.com
 (fout-a3-smtp.messagingengine.com [103.168.172.146]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-206-XUEINF0SObasqdftohqKRw-1; Mon, 24 Feb 2025 20:06:15 -0500
X-MC-Unique: XUEINF0SObasqdftohqKRw-1
X-Mimecast-MFC-AGG-ID: XUEINF0SObasqdftohqKRw_1740445575
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfout.phl.internal (Postfix) with ESMTP id BC2831380A2D;
	Mon, 24 Feb 2025 19:58:40 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-04.internal (MEProxy); Mon, 24 Feb 2025 19:58:40 -0500
X-ME-Sender: <xms:wBW9Z9FmmV4bb6c2umROii4V5ZmUE1jGh9kqid_D3JpphLzPd3VNjA>
    <xme:wBW9ZyWpUmgE6VE-ppFd2_X8DxUmjq3oJLb9b1yXYnVnCJa6R3fVV7ZcNghv1BH9x
    KNcw6St4EU-bGqc7qc>
X-ME-Received: <xmr:wBW9Z_KapaoqAseFZJcs67GCTvqpeDNzeeEiei_cLCJcZpZzuMuDJPQgv8IgjcZ4pb-cSUPmtYo4ME5VhofR6ME-2l8P-ugw5aw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgdektdeftdcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
    uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
    hnthhsucdlqddutddtmdenucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvden
    ucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmph
    hhrhgvhidrtghomheqnecuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeei
    vdekkedvteeuveeufeeffffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgv
    hidrtghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpth
    htohepkhhlvgifvghllhgvnhesshhhvghllhifohhrlhgurdhnvghtpdhrtghpthhtohep
    sghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:wBW9ZzHRs2kSLann25uQgCHkmifewnAIsK-7YLGTcgA0YCt-Ym7MWA>
    <xmx:wBW9ZzXc8SImxKCYgla3mbxm9T2W7MjkwC9AFhs4SQyJuKTo93BTig>
    <xmx:wBW9Z-P8lKSPNlWiu-LtDWx1UPm3za0PJJfunKmSKYH3yNwEKLXsMg>
    <xmx:wBW9Zy0whVySjVt-6H5PJaBxW0o-JZ46q6ut8xd0mQ-OuX2eFWtCOQ>
    <xmx:wBW9ZwhbZjRPqPboyu4HPnSCdKIoLM8O8H4yC9LhNEbrdPKm7ke23Tsx>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 24 Feb 2025 19:58:40 -0500 (EST)
Date: Mon, 24 Feb 2025 16:58:38 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Linux command line and youtube links?
In-Reply-To: <Pine.LNX.4.64.2502241937140.2983544@users.shellworld.net>
Message-ID: <5fe25c77-e36b-c8e2-d327-fd1602f0dc7a@hubert-humphrey.com>
References: <Pine.LNX.4.64.2502241937140.2983544@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 5Bh18_PM47cPVRmDI6uQHpQQjyisz8tB9CjFIXN4Xv0_1740445575
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.30.177.111
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: vwN_6muewmuektDDQHvI-C3chjth9L8yK7ZjEJ1SruA_1740445579
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.146 as permitted
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

Hi Karen: You could save those links in a file-and-download them with yt-dlp or 
even just play them with mpv. In my case as I have both mpv and yt-dlp as L Y N 
X externals, both actions are just a keystroke away. In addition you would want 
youtube-viewer so you can examin specific youtube pages or type in a concept to 
look around. I think I had asked Luke to install that but haven't heard.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

