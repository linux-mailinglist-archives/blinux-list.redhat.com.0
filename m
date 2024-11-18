Return-Path: <blinux-list+bncBC3NDNGRUAMRBH5B564QMGQEK72RPTA@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 260079D1BFF
	for <lists+blinux-list@lfdr.de>; Tue, 19 Nov 2024 00:41:21 +0100 (CET)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-460afc4747bsf86252781cf.0
        for <lists+blinux-list@lfdr.de>; Mon, 18 Nov 2024 15:41:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1731973280; cv=pass;
        d=google.com; s=arc-20240605;
        b=dbYEwtWcws0Fbz1mq1arqSvcZrai1ZrKFMD8zhEQfkpaNFq7twTHLCQztqI1xGpXtv
         hYjk94FLNCgF/VnQHzrJX/wpgbW6uPkwDevTbjZdY7R/0ZXOfKcYq88wNRx8PmoZpX+R
         ax5L8HZMHO2ewDgPxl+r90KkvZw72EL1QOXeJiWWYyfvB9k6AUb8zjEw3PzRw3ZwUdkQ
         7SWR9aCrIadRQJ/5ktZfossbAp9bcH2azhBWnvqPig17t8UfpztRQaLnLSaN6K5jSn/a
         3KHThl5GL0mlI5eIZnYT4xmhMht8vY6kkD8Y6hNKJB59zfxXE6d6/ywAufUYezvBiC4G
         a0jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=i9j4TZakl42jUhDRfb1UGy9mcGb5YVkU6SDAE+35cwk=;
        fh=dUk9ora00JrS26rzj7benjNDix9USkV38X8Q4S8EoOo=;
        b=kooGnPIe9A19hlLOf5Z6k6SuXgdNG0STkEM4ggq7HgBe5HGTQAZPE93wBHrSPAe3Cp
         8nydrsh60xsLVWjFgt9n7bPAOb1U0ra+3aBJ/5vKXgQwU6vphMXwC8mRT5MM8ImIfVGE
         OLky6HWm2mVObex3I6aNbdTMD6+7TpBuRYyuAtlaq7/JjeT3OVTid57coXFaWvWrv/YI
         LVvhH/laviqKNxhbzr0a/MhJQ5oC6W9ZIMLb7HF8sbGObUPsHNMg+KYdCXzT+IFet3tK
         Ns7hdZEcZgNCopdWgPTmPwWa6kqg0N7csECRvPT2soXHZrmE25BqTt6QO6O7v6hJlXD1
         jjAg==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.151 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731973280; x=1732578080;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i9j4TZakl42jUhDRfb1UGy9mcGb5YVkU6SDAE+35cwk=;
        b=nkJNEwnqORSAe+W8VEVPRZfgyJeufOdKuCGVvniRW3g2BG/nwqTpn3gfGSGViWRW2z
         CSGoBUNrFCjnr3aI3LYe5YS6LVXa8uBHRh4hUWQqvV2eNaAFW3mtsM03meMiEFPa/j7n
         vcEntwIZU4PQUOA7kdVDec568/53GjO9UTcQyXo83Acu5dvlXnG8D04Rv3dsaLBLlRJM
         l0SfO5ooyPgib8/09YIwYBp1U/Gq0Ic79T+trHtaqf65Xvrcvzg3/ETEja5cafvtFLKy
         +lzJ8UkyzclK2qYqf35eqTEXnHVt+1WHrEEKcJCDxDgj1767gOxUo/yjfBGbuCS5syNG
         Nitg==
X-Forwarded-Encrypted: i=2; AJvYcCXRtXj29iyCLqqtm8qs+ASu1wzL6wftN4GRE6z0euxsh9+/rWAzf5OWGWgPfuqRdQl6ZpwV6g==@lfdr.de
X-Gm-Message-State: AOJu0YyEjJnnXcK2QcYkfJgU52mADMT0u1TIpPu/kUjzgHq9uxvbFbOv
	a6GL3aGusE2uSStUomzhsbf+/TSdM0qb2cX/rFlbY0BgxDStS7J1hArN8lPj1rQ=
X-Google-Smtp-Source: AGHT+IHp1YYY+LRD5GNCRu7ysk5A/c4RM6g2DMgA9oX1x44oBCzoK7ZaVG+iuQshPRwjR8XXpLMwRA==
X-Received: by 2002:a05:622a:94:b0:463:eef:ba30 with SMTP id d75a77b69052e-46392df3a97mr19358221cf.20.1731973279411;
        Mon, 18 Nov 2024 15:41:19 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:c7:b0:440:38e6:c194 with SMTP id
 d75a77b69052e-46356fee4dals7067761cf.2.-pod-prod-00-us; Mon, 18 Nov 2024
 15:41:18 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCULsiGEtKvkn/YUlQZiiAkQaWAoKU00frJej8vxE4bRU4CgIxzFv72Lcy9tAS60r/0vw4eir8t4rHVs8g==@gapps.redhat.com
X-Received: by 2002:a05:622a:1e85:b0:461:2221:3120 with SMTP id d75a77b69052e-46392c856cfmr23748981cf.0.1731973278442;
        Mon, 18 Nov 2024 15:41:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1731973278; cv=none;
        d=google.com; s=arc-20240605;
        b=EhB68YzU5kltJMmtlTkRAj2GaGXktV1jDE9CkbcgONpyu8aD7/rsc3TYmbr9hcDdyi
         aU92DRaDGrvu9ANXAlp3e405rKoFYJtDrXGuETHob2Wi5aWDa+cBBsBf8K7uNqVL4jbj
         MegksNWZogIM51QvnryCMUzHsqliBsy+/5LKdZhmPhd+iDsA7nJKV+PTvP/5zpmycopF
         d5SC3hSRky6bmx+8Shcsp7XvKgG28cu4DT8tWlZneh6P5u2OETXjzTV9rZLlaPfv6w83
         hiAQOAdTaThzaH+1xYRQoHw4QQTH61Bz8hgBCdX4aQfTBqGv2D6S1CVqdlYaVEhSJJ06
         sxBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=ppu95J6MOu+bT8CpgDde5Q9K1FFf9qpemh1IyFV0lVo=;
        fh=4ZoohSEpWMrCXTqrMRZ92m8uZxMeBNEBsLVncW+B5g8=;
        b=FXLQ35LGWfaZZvDyexiv3f1sC7m4r0yDwPZ9d2YemXzmSLJzFnAlDQaNBtFm8BKl4J
         LGqwcSZsVR3iFLe2y2UaqEPFqkhL0qJ0hOBQ9MjrV1pzfexsIo7ug6iRLYfUUwNg5SHC
         bbfOJWjWjJp88k4m0XQ2ZzSCCeVWCo0gPKGLZHKBCMFIr4fnKKNl7o6+Bgkg7f0Qc7W9
         bORwrU88rqUgtlHxqfxiLe5bNqODEsd6E8E2CFC+WkI4zO+Ss8A3uXhiIGOteAjRFKfZ
         iTMj8RqekQKPLS6dW3oO1wlgZUG+ZiQluA5f03tPFPnklf+ObvTgR96SRDpSjsDLyEuF
         tF2g==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.151 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id d75a77b69052e-46392c1d39dsi8233131cf.333.2024.11.18.15.41.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Nov 2024 15:41:18 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.151 as permitted sender) client-ip=103.168.172.151;
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-193-SGooscTkOpmVZLz6t46BNA-1; Mon,
 18 Nov 2024 18:41:16 -0500
X-MC-Unique: SGooscTkOpmVZLz6t46BNA-1
X-Mimecast-MFC-AGG-ID: SGooscTkOpmVZLz6t46BNA
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 25BBB1956083
	for <blinux-list@gapps.redhat.com>; Mon, 18 Nov 2024 23:41:16 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 213431955F3E; Mon, 18 Nov 2024 23:41:16 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.33])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 1E74A1955F3D
	for <blinux-list@redhat.com>; Mon, 18 Nov 2024 23:41:15 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 825341955F42
	for <blinux-list@redhat.com>; Mon, 18 Nov 2024 23:41:15 +0000 (UTC)
Received: from fout-a8-smtp.messagingengine.com
 (fout-a8-smtp.messagingengine.com [103.168.172.151]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-230-WorYIov0NkWuGS2Fp74yOQ-1; Mon, 18 Nov 2024 18:41:13 -0500
X-MC-Unique: WorYIov0NkWuGS2Fp74yOQ-1
X-Mimecast-MFC-AGG-ID: WorYIov0NkWuGS2Fp74yOQ
Received: from phl-compute-11.internal (phl-compute-11.phl.internal [10.202.2.51])
	by mailfout.phl.internal (Postfix) with ESMTP id EBCBE1380063;
	Mon, 18 Nov 2024 18:31:43 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-11.internal (MEProxy); Mon, 18 Nov 2024 18:31:43 -0500
X-ME-Sender: <xms:X847Z3M6R2i8nmJjXpEIg9hRzhWP18k2jji43c1tPPQP-xip-crOyQ>
    <xme:X847Zx9R0UhzedFLOxE3sTIQz2QKuc3lhOpuV-yL-FueK9alm48ihCVHtUUU2mT4h
    JwUfzTw9LtSW283GTg>
X-ME-Received: <xmr:X847Z2S89bH0sN7IshRD0Ipi2jGxrbt_6dwpwzGtvv_ajR7VY7jnZfoCvWsoXHUOJ-osOkFg97UH9gYFnwXJYY-hrBqsWtlm37Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrfedugddutdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdpuffr
    tefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnth
    hsucdlqddutddtmdenucfjughrpeffhffvvefujgfkfhggtgesthdtredttddtvdenucfh
    rhhomhepvehhihhmvgcujfgrrhhtuceotghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrh
    gvhidrtghomheqnecuggftrfgrthhtvghrnhepvdehgeeljeekgeeugfefleekjeeivdek
    kedvteeuveeufeeffffffeffledufedtnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomheptghhihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidr
    tghomhdpnhgspghrtghpthhtohepvddpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtoh
    epkhhlvgifvghllhgvnhesshhhvghllhifohhrlhgurdhnvghtpdhrtghpthhtohepsghl
    ihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:X847Z7t69jWqd4VO70Kz1DbCUyxl0mQ2sx9d6Pon3Q8r1GTsFZovKw>
    <xmx:X847Z_cH3vaY2BRP4rFyqCglCbkpYCRTMYYVdcMcfSsZapvO7P2NFg>
    <xmx:X847Z33qS6Kr2GiI4OTbf3gerkOnL3TOBYXDeS3vef4o_9BYsj8qUA>
    <xmx:X847Z7-22FJIwLszj9NBb6U4fN2Ani7MidVdQG4wxr9fNJhT1W5REA>
    <xmx:X847Zwp9DwaV8LGLsXBgDxeFpb-CmEqs8uoiBIZWahRqdZe4C26YUDuC>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 18 Nov 2024 18:31:43 -0500 (EST)
Date: Mon, 18 Nov 2024 15:31:41 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Karen Lewellen <klewellen@shellworld.net>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Piper as an option in  Linux distributions?
In-Reply-To: <Pine.LNX.4.64.2411181752460.395171@users.shellworld.net>
Message-ID: <1734eadc-f27b-2f63-67b8-1a5aab1170cd@hubert-humphrey.com>
References: <Pine.LNX.4.64.2411181752460.395171@users.shellworld.net>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: 7UGWw9k8dYmqGXhIwATKBEIu2gKcxbR81EHVZMw49so_1731973273
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 3CHqTqhJ8n6VeKJQhPE2idSCvWC6LzAdXpYK1PLFA3Q_1731973276
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

Hi Karen: Well, I think it was Storm of Fenrir who told my Linux 
expert-and-myself about it. However, the best quality voice was somehow too 
large, so we chose another one. Also, I traded mail with Mike who seems to 
maintain Piper tts, he may not be as aware about screen-readers as we are. So, 
unless I am wrong, we might need drivers for Speakup. I would love to try it. 
Hopefully you will receive many more comments-and-suggestions. Thanks for 
bringing this up
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

