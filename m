Return-Path: <blinux-list+bncBDP7P6HU4IERBHE6U26AMGQEI7ZCJPY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B427A144F5
	for <lists+blinux-list@lfdr.de>; Thu, 16 Jan 2025 23:58:38 +0100 (CET)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6dd43b16631sf21018166d6.2
        for <lists+blinux-list@lfdr.de>; Thu, 16 Jan 2025 14:58:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1737068317; cv=pass;
        d=google.com; s=arc-20240605;
        b=R92N3s2qKWHZjxJlQr7r3+0MavzSScOsILXK2OH3Phr+bXBSdgVFTQVob+gk/tBo+A
         Fc9aW7c7rcEQ5OieqoQ9tpCgaYEuv7rU0SmzDftij4mRApVB4LJHg6VR5pCL+hwe7q/Y
         nIRBW2BvuMigZyzcg/r3+a45oAXO36dJF4uEJVJ+nz9wQfnjO1zxYo8K+5cySXoIIaWk
         8A7gijhy0Cn6C4uUOIh3DAL97OeOpKDzXDEXjbQhssq7qKaSBFAnyQIdM3h5/bcDXE5h
         xoaUNoHTcwZ5lAe4TWpYZZcAOH8dzTZCc1B9fXxO8aXb4/ryZXoksnTPoa5O1WmGAP4w
         tqTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=zFwKmAOthZtU12+7Fm7fNbTWPHaLBZXswpeiOy+rlhM=;
        fh=qscJWXztcIbgjpamNjlgaCwLIp7nQoykbtT4hx2H0lw=;
        b=cdnj/voN9RfT4fVMXMH/iNenQSXpbmkzWNCrj+7I4mnB9ycjpVc+oWRwPKCEW80l2c
         xyEiDQabA1EY5DaL9km+3yP2NVkHHXS9lndtj7VMUn9mQUw6XXfOHQmXXNY2PrjxthAw
         NeCLj0M7T5vJukKf9Y07dYOBtALVLpMvxl2U9KuFRKjNYnQ/GYRZys8Hk42J3Ec3ZNJY
         3oi1s8l+9LNgkEGpkBLWqkuOZTEw811369kMQw+SzYA6zlEQ9y2DL3xMiOzs3TevabaS
         kUOmgYldj2mkJsFG6Y0huRmjnnoa4FREa9252AYwRuxeq6NbSesY447uJRqGrbIOiQGk
         V1sw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.142 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737068317; x=1737673117;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zFwKmAOthZtU12+7Fm7fNbTWPHaLBZXswpeiOy+rlhM=;
        b=jNsb2m1Kbht8o4IQdjd/EkupTwW2gDASgIaIOQS26WA8o7n8NTx012guZ2U5U8GjaE
         4+QLW8jW/W8JRU9QA4y1MfqVVjyEN+wM5JqA0jMIOjOz4aEjT/kqVtBX/a+Ah4McC4AV
         gLj57kP+7ZVqr616KILiAwwHRZgz0ZhK5aWkLKRCNmpDHpU3iUtXH5m2zz6sK67dLpEP
         TEzOnVV6YElTaHc1AFyajtttYRF2eZ1X3SzPTugpVkgVEljouxwxwmFqkNLORoY/i5q0
         MIcyOVQOJDck95W+jG9bthEChWuN8Pzf/Utg9oojOOM6yRmYVfM5kho1n0FD7pEvDCwk
         lqmw==
X-Forwarded-Encrypted: i=2; AJvYcCUlkoxhtu+bRfD9N/2L/U88u7HhpvWrY8IFDyTF8jTX9RjcGyKDPWwBvjGrzfTj7TOeoD3oNg==@lfdr.de
X-Gm-Message-State: AOJu0YwPW+sxaGfpkbAseolMSjwAp6maEf8+qZ67pAyNs+WaRarXAf7O
	i2Dv0ufG659qdX3dXN58looXXKm6Fuk/MCkjnI2O84uhTluWfvwG60yChPZ6ejg=
X-Google-Smtp-Source: AGHT+IFKR6pBGgeXKb0i5HnfkoH3Ac7dwd9pspn2/ZCixO9nbg0ui5QQqHVuuFAmcGQuOYj7kWaJYQ==
X-Received: by 2002:a05:6214:310d:b0:6e1:9126:4d14 with SMTP id 6a1803df08f44-6e1b2159467mr9244376d6.11.1737068317489;
        Thu, 16 Jan 2025 14:58:37 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:b701:0:b0:6d8:aa9e:3e08 with SMTP id 6a1803df08f44-6e1a10589c0ls23179246d6.2.-pod-prod-08-us;
 Thu, 16 Jan 2025 14:58:36 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVSzW9/4qoVZMxjvPDAqIL2uZyPnlJgr8rF7WO+EnCA+5mf3wENIfWUWTgyY0Fxcb+v2SfNIGqyERju8w==@gapps.redhat.com
X-Received: by 2002:a05:6214:5289:b0:6d9:2e46:dc35 with SMTP id 6a1803df08f44-6e1b216f921mr11376456d6.25.1737068316334;
        Thu, 16 Jan 2025 14:58:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1737068316; cv=none;
        d=google.com; s=arc-20240605;
        b=jJCQ/z+9tjknOqVsZXO3eTgBUQtH4NjDZPaZGdHsPQ88/pYnOhXOyrsayqDx7t+N7L
         2vG73a3UgIrpQ34agOIisovH1n8KHb0RGJqIOyFHuhBbxzrjibuLMZxmW3jvEAEW1xT6
         AZVHYmmxAo80qtztFX2/FNFDhh72nnpMiuWesr5hLAIw0jE0qRyX5sf/yENQGCrH84j0
         edbn6YQ2BX9XlOZqARVQEP7KtEU+W9HxOjPq6LFnFXHnHTf0kUzyBmHfvhb8ru1JnQU1
         /95AfMsApTt25Yw6fV7ZMBmeBfIWlolUcY6qjFO7q767fIqMEO2Mpq2F4oJcU4JQ9gYv
         cqLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=zR3l5P0nXZd/zIpC7DksIDFfPN01RGc8/dW3OoP+Fi8=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=Lm69z/xy/zHXOwRF26Ry1q3xM5jA9M9V+sFXtFyLN3oCRkUIvPQvgUtZCeQnMre+d2
         TxbZ6U8TeoCB4HAuPgyaSkYTHF9pPbi253cJpEvjh1MfxQ29rUeR0KjwURy5EsJVSkQ2
         Q9GY+mM1VIlMxMJTFImkviNXeaF7lToS0aRJ0jY/VLvH4yUFlTH0/sFdv/FCPV8Q3bLF
         vem8qmdx6ZvX8f39F5+hww/9wKx2vNuXv4nSez+kqPu96ioaRfJ/CBhsTBGoNC6Pru+2
         eHnWRxVGkmOa/x8mrhuPMz36jMEpAktpPTwDpZWHw2PMjOQG+dfh4aaleYCfnJ/zCks8
         SBlw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.142 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id 6a1803df08f44-6e1afcda5e6si11036466d6.179.2025.01.16.14.58.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jan 2025 14:58:36 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.142 as permitted sender) client-ip=65.20.63.142;
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-17-GnYjcgClOP2Mkncuolf_pA-1; Thu,
 16 Jan 2025 17:58:35 -0500
X-MC-Unique: GnYjcgClOP2Mkncuolf_pA-1
X-Mimecast-MFC-AGG-ID: GnYjcgClOP2Mkncuolf_pA
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 598E81955F2D
	for <blinux-list@gapps.redhat.com>; Thu, 16 Jan 2025 22:58:34 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 53870195E3D9; Thu, 16 Jan 2025 22:58:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.49])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 50E7D195608A
	for <blinux-list@redhat.com>; Thu, 16 Jan 2025 22:58:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-05.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id C90B819560A2
	for <blinux-list@redhat.com>; Thu, 16 Jan 2025 22:58:33 +0000 (UTC)
Received: from altprdrgo01.altice.prod.cloud.openwave.ai
 (altprdrgo01.altice.prod.cloud.openwave.ai [65.20.63.142]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-453-nwigJhMTMVCdebqfjBj8Kg-1; Thu,
 16 Jan 2025 17:58:31 -0500
X-MC-Unique: nwigJhMTMVCdebqfjBj8Kg-1
X-Mimecast-MFC-AGG-ID: nwigJhMTMVCdebqfjBj8Kg
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 6767F6A704E904A3
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudeivddgtdegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecutefnvffkvefgfgfupdggtfgfnhhsuhgsshgtrhhisggvpdfqfgfvnecuuegrihhlohhuthemuceftddtnecunecujfgurhephffvufgjfhggtgesthdttddttddtvdenucfhrhhomhepfdforghrthhinhcuofgtvehorhhmihgtkhdfuceomhgrrhhtihhnrdhmsehsuhguuggvnhhlihhnkhdrnhgvtheqnecuggftrfgrthhtvghrnhepgfeijedtffevtdfftdfgkedvueeftedvveelffegjeetueeltdefgeeutdeihefgnecukfhppeegjedrvddujedruddthedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdehrdekuddpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtud
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo01.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 6767F6A704E904A3 for blinux-list@redhat.com; Thu, 16 Jan 2025 17:58:30 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tYYoi-0002sv-2C
	for blinux-list@redhat.com;
	Thu, 16 Jan 2025 16:58:24 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: blinux-list@redhat.com
Subject: Re: speech-dispatcher I Finally Did Something Stupid
In-reply-to: <E1tYY00-0001DR-1v@wb5agz>
References: <E1tXPM7-000KS7-0c@wb5agz> <45995941-6847-4694-b01e-d67ee7418667@gmx.it> <E1tXuBT-0001H0-2A@wb5agz> <20250115080337.fjk25kiajtxwfbpr@sprite> <CAO2sX30NOJL6Qt39R99h4G=pKpw7Wc+tbh7OJW4X0X8iMNWsXg@mail.gmail.com> <20250116092130.tn7dbr4wlw43obkj@sprite> <E1tYY00-0001DR-1v@wb5agz>
Comments: In-reply-to "Martin McCormick" <martin.m@suddenlink.net>
   message dated "Thu
MIME-Version: 1.0
Date: Thu, 16 Jan 2025 16:58:24 -0600
Message-Id: <E1tYYoi-0002sv-2C@wb5agz>
X-Mimecast-MFC-PROC-ID: 7p6C0kRe-AoELyaCBqoNOpPRQN9uzi2hBSOSVEouNi0_1737068310
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: RHQeQBERyv3cm2A5aoLbbExKBiKH8j754xFT5-w28e4_1737068314
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <11091.1737068304.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.142 as permitted
 sender) smtp.mailfrom=martin.m@suddenlink.net
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

I was incorrect on one thing.  It looks like orca consoles start
with /dev/tty2 so the fenrir consoles do not kill orca after all.
If I login on orca, go to another system connected by ssh, and
type

who

The active tty is /dev/tty2 The login prompt for the other
command consoles speaks the tty number and I just missed it in
all the hubbubb.

Martin

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

