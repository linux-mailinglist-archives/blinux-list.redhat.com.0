Return-Path: <blinux-list+bncBC3NDNGRUAMRBYVRQG6AMGQEODJPBKI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-il1-f199.google.com (mail-il1-f199.google.com [209.85.166.199])
	by mail.lfdr.de (Postfix) with ESMTPS id 09DE9A08353
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 00:16:56 +0100 (CET)
Received: by mail-il1-f199.google.com with SMTP id e9e14a558f8ab-3a7e4bfae54sf12313345ab.0
        for <lists+blinux-list@lfdr.de>; Thu, 09 Jan 2025 15:16:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736464612; cv=pass;
        d=google.com; s=arc-20240605;
        b=ThdoXA9zfWOp5NA4lrJqW+2S+mV1s8GDj55lQgbfJUa/KLRX0NuH2jnxFazigzfaZC
         sEUVcHlXsYEDRgmZgYTbub7u0p4/rsFhp7PS4bt6MIfY/D8UQQjRZdZPhL9VwjK/nl9X
         BXaeUOxmPBz8M/Rct1uIqmYMu0KWM8Zip0LnMpnsZmutxGUh/wXtShuyWv+dNC6EW2Q0
         fr+ibottxzg3aCZtMHVVONNiOw7QEOeHK88fR0TYBRqmgU6Fe/IE8VgsckkLl8YoYHHW
         1BxQzohta+xqAa0svq5PI6gRyAiNKX7j0FXhbN+ir4RDjXnvnfDXLGwfH+ohWfu324Vp
         VbwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:feedback-id:delivered-to;
        bh=rJ6ffxE1GaBZBtsM1nOU4r4SkeSEFbplHfCbNJLTB78=;
        fh=0xrPoMK9pcJV6cYvMtAgsq+1Cjlc+g9lvlSbw2NxDtg=;
        b=i2l99+gpQp9kSf/RSoOogRuMscj93FONTyPK5HEzFZUk5mvdbDduujho7jKft1a7se
         i48EiBsHLsVHsj2AWI5nH5BhpKyhvYuBEdwLZyXo1r3njjOwkCPBeYuIcoLa+FG0prRX
         8aCk9EAfMOJon+rOvJ96WpPqqIJ9TowHDZreVdckJ5zLfcu0yfhmDoCXUMawkwdddurd
         FbG26xt57i+aqzx0370E7qAenw+8ht9HAXUfgdufAkD8tvlXKRBRvo7fM0hxXqSQdacw
         Xt5HjbJm8SzUBBQYgUeNI4G8BfymWM4aEpywiiNar9ZgqcdyF08tmG9ZV+Ae+xtx1xWs
         89tA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.156 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736464612; x=1737069412;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :feedback-id:delivered-to:x-beenthere:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rJ6ffxE1GaBZBtsM1nOU4r4SkeSEFbplHfCbNJLTB78=;
        b=qGkkMIegP2rDBXVdB4RlqIE7PeqpbFUsefMjdCbf+9tr+OImRWtQAG8S7VG1HEHGtt
         ZL61QLzY3hr32yO/up/+qEeoacRjOLtQIeeRE7l1WU/zRiClJl58K7QdkfMd41k2k0ef
         t5wDX82y8HsgKsHCXfbo7lPI8x6MWhZUCMPtMZJNq/fpTTEHKQGT1RS/u5USkMlk/SwY
         uZJ2e+gyn4fA/BRhzeqoYgi+/1AUtxkWQtxMKk9xeCvlrLHSAOspQYaWaUX2IczH+9Y4
         vJ2Oi/rkxrpPMAW/JWQbpOtLrNWiGA5v1ubXJYnkVOZasYLSP66YNPTRi/RJZvj+4EAA
         vVzw==
X-Forwarded-Encrypted: i=2; AJvYcCUWYlUwYiuah/Rn9icKo+PZ8l0mXgu+ZW0qwY3Zdh2NK6gjuJj4EWnEXxJOA8BOTnPSNLUtNQ==@lfdr.de
X-Gm-Message-State: AOJu0YwrxYPcaijCqBLrcPGVlw8vQU4V2S4vYvfQ3NSMANbHERetjMkc
	nByzJxRaHlI5tOcZ5xOX5OdcRu2KENXO3IO52SPJi5WuQsNqSIsavF966muCZ/k=
X-Google-Smtp-Source: AGHT+IGGVX/d4RJB0CnZha8vV6vjKLLO5eipxMXLhjCWvtYmICDursVGFUeW2FagqqtUhaUdPzsJ3A==
X-Received: by 2002:a05:6e02:1988:b0:3a7:bcbf:ba99 with SMTP id e9e14a558f8ab-3ce3a9b57eamr73452785ab.6.1736464611235;
        Thu, 09 Jan 2025 15:16:51 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a92:1941:0:b0:3a9:d94d:cc48 with SMTP id e9e14a558f8ab-3ce47639b34ls6644565ab.2.-pod-prod-04-us;
 Thu, 09 Jan 2025 15:16:50 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVGTgoMDX877BGQKkKjgab2BrxKA2PRZlUHq3Aq217LnC4UTiVtT6iPwaSVq2SNHC7k6H9q8FMuuBEmvA==@gapps.redhat.com
X-Received: by 2002:a92:c24f:0:b0:3a7:e592:55ee with SMTP id e9e14a558f8ab-3ce3aa746d1mr72619245ab.20.1736464610141;
        Thu, 09 Jan 2025 15:16:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736464610; cv=none;
        d=google.com; s=arc-20240605;
        b=XpFKD8KimXup0TvVL5lkuz6gfKAvtGtfMQBO7jQN9JQBU4UeF1VgT8cYzZ+eDxSUrG
         sj0k9N+lscyqNxoC06Myb7ygL948nUjJ7fafv+pM1t5uFQ0hzJlTNJx3nI0TFCycm9H0
         hAgH7aHFw0k4v3ulYnpPvKn7kfQ+cwRzdZ1sTi4xeuVCWSpL5dqfACGqt4wVnVw0yhZq
         eNksrr85HrEMVxjMe2UanyCVKomslyvZmFfYUUFXPEB/ZiApuNYjDyo7pRkhtz+gGYIo
         dUfTbT75KPdHQcVYi0fPPOKVw+nWuZNkgYiD5yx2Pji4Ta9bpna5Dfeq0x6CbXIUmV7Y
         SwBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:feedback-id:delivered-to;
        bh=LNuAWjZVAngWwXr8R7n33f6dX9Yz6e4C2+6iN9Nt27I=;
        fh=afeQqVKmYf9Me5LKKoc1/L+JG9TzQiygF/Tjngx+Kf8=;
        b=TDVMg6Xjp7rEmWYXo/Bo/0wJN0+KbPoyBXmFJuKzrOkKaKUEryEQpXuAEfAztbB3UL
         dtA0X4isSajiP7EJLY5QcDXmwu6nx8Z3+d5juXtQQ+/6ilYlF0tgIeMUboJSTl07IwtP
         oiI4eKK5YU8rg9h7tMxGp76fWit6AHAhiRQV/mHN7YS+dAnjDMc9Tqz9zqFAJhyIguI4
         TSyeRKnGG8SY5gFPNTNh49nzlmTwWWMoXP/xTIGkq8E981vBae+gNUEy3fqnXJO7R9dM
         WzLCgVLxoGdiMTcycRIbZ8f5WzrN0cgWZzeYc7fzIRhwl9BEvG8R0zCIu/stI0BslEsg
         V+FA==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.156 as permitted sender) smtp.mailfrom=chime@hubert-humphrey.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id e9e14a558f8ab-3ce4afcce0esi11677705ab.100.2025.01.09.15.16.49
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jan 2025 15:16:50 -0800 (PST)
Received-SPF: pass (google.com: domain of chime@hubert-humphrey.com designates 103.168.172.156 as permitted sender) client-ip=103.168.172.156;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-625-rN-Yi2ZyOKGJiuk3Zaw3eQ-1; Thu,
 09 Jan 2025 18:16:48 -0500
X-MC-Unique: rN-Yi2ZyOKGJiuk3Zaw3eQ-1
X-Mimecast-MFC-AGG-ID: rN-Yi2ZyOKGJiuk3Zaw3eQ
Received: from mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.40])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id B09B519560B0
	for <blinux-list@gapps.redhat.com>; Thu,  9 Jan 2025 23:16:47 +0000 (UTC)
Received: by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id AC3EA1956053; Thu,  9 Jan 2025 23:16:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id A9E5C19560BC
	for <blinux-list@redhat.com>; Thu,  9 Jan 2025 23:16:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 44603195608A
	for <blinux-list@redhat.com>; Thu,  9 Jan 2025 23:16:47 +0000 (UTC)
Received: from fhigh-a5-smtp.messagingengine.com
 (fhigh-a5-smtp.messagingengine.com [103.168.172.156]) by relay.mimecast.com
 with ESMTP with STARTTLS (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384)
 id us-mta-643-tOiIL1cLMlukmCK3i82lsg-1; Thu, 09 Jan 2025 18:16:45 -0500
X-MC-Unique: tOiIL1cLMlukmCK3i82lsg-1
X-Mimecast-MFC-AGG-ID: tOiIL1cLMlukmCK3i82lsg
Received: from phl-compute-08.internal (phl-compute-08.phl.internal [10.202.2.48])
	by mailfhigh.phl.internal (Postfix) with ESMTP id A3BB611400AD;
	Thu,  9 Jan 2025 18:16:44 -0500 (EST)
Received: from phl-mailfrontend-01 ([10.202.2.162])
  by phl-compute-08.internal (MEProxy); Thu, 09 Jan 2025 18:16:44 -0500
X-ME-Sender: <xms:3FiAZ4ng-JV1yS_1L5aZO8-ROD6MqLESqU_C0qvrKFl0ux9CmRMeyQ>
    <xme:3FiAZ33M9IiOHi7Ly8eXHKJPfOqkHzE9ix26-PHvNBstL3ldTCf3KbU7BrFzn5zEI
    JsDIJsFKkjh6-BMHUE>
X-ME-Received: <xmr:3FiAZ2q3jyBz2jHofYv08o3iriovvL0jbMdVu7OxIPgxqtuiQxsEijD23_xxEHTfb9C5VtSts62Fm2cIhDHpzkEiTkyhQHUhwls>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudegjedgtdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvve
    fujgfkfhggtgesthdtredttddtvdenucfhrhhomhepvehhihhmvgcujfgrrhhtuceotghh
    ihhmvgeshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomheqnecuggftrfgrthhtvghrnh
    epvdehgeeljeekgeeugfefleekjeeivdekkedvteeuveeufeeffffffeffledufedtnecu
    vehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomheptghhihhmvg
    eshhhusggvrhhtqdhhuhhmphhhrhgvhidrtghomhdpnhgspghrtghpthhtohepvddpmhho
    uggvpehsmhhtphhouhhtpdhrtghpthhtohepshgrlhhtsehprghnihigrdgtohhmpdhrtg
    hpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhm
X-ME-Proxy: <xmx:3FiAZ0nAlUKMcXYrl5-vNG1jw8X4FmkqphW40VP5Pv_nEZrRbQ4K2g>
    <xmx:3FiAZ205FLLDyVP5q8te-BbgwjUxeX29ECtd35DKYywCbcgahQBNAA>
    <xmx:3FiAZ7v9lvVNlh-pauCGF_AMvGGvVczkeuwZgPkmnHXtERKWcRygKw>
    <xmx:3FiAZyWcQb6jp7ODXMyHMqVXNAwDVtLWMUJCNv6AOPrC1b_QdI_ALQ>
    <xmx:3FiAZ0An0kDKS8LNjZxJcwN3tUN3mA5Tob3rqwI_8o-4g8U8k3UmD3d8>
Feedback-ID: ia9b947fb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 9 Jan 2025 18:16:43 -0500 (EST)
Date: Thu, 9 Jan 2025 15:16:42 -0800 (PST)
From: Chime Hart <chime@hubert-humphrey.com>
X-X-Sender: chime@chime.lan
To: Rudy Vener <salt@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google blocking access
In-Reply-To: <Z4BPAA0lH17FcIEN@panix.com>
Message-ID: <ffc75290-c44b-f50d-996c-cdbc5db72b87@hubert-humphrey.com>
References: <m3a5bzvek5.fsf@dalen.lamasti.net> <Z4BPAA0lH17FcIEN@panix.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: tmPsF0ioYnNApmtwNyslRhud36ECctHvC8xyzgWZajM_1736464604
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.40
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ML67KSxEOpZZ4Ta2xgwj7P20dC-E-aI_KZhMG1l069U_1736464607
X-Mimecast-Originator: hubert-humphrey.com
Content-Type: text/plain; format=flowed; charset="UTF-8"
X-Original-Sender: chime@hubert-humphrey.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of chime@hubert-humphrey.com designates 103.168.172.156 as permitted
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

Hi Rudy-and-Lars: Maybe not completely related, but I was getting a similar 
message trying to download youtube items. Our solution was to alter an ipv6 
digit.
Chime

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

