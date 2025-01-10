Return-Path: <blinux-list+bncBDP7P6HU4IERBFN6Q26AMGQED5VRX6Y@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB7AA09DD9
	for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 23:28:39 +0100 (CET)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b9e433351dsf114918985a.3
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 14:28:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736548119; cv=pass;
        d=google.com; s=arc-20240605;
        b=djMr4iIsHyZWe8IRSON0h+T4q9T4k0FHI1J+KpphZlXlGi7oJqSL+SabGZKH+ixtdQ
         dJluZvj5tYzgILbCpQvmfUvdGxDFEx8Oohyhp+NKdr+/7Z++sz4VXuQ6qouWssSkGQHs
         zPiWZY0cho/KCWrp0aLgb9rYSExwmVQ59PLbAz46FlDyY3Ef+elYffskQMM6HNLH/DE/
         c4/Auv4JqsB7NegONekeC4+kRzBkAG9X3VIPXveI5iBn06E4LBQzgGNtEGVB93sJSPhQ
         8XBbXjYi1gJ5Ykq1aWsb+5PWisGCcq2jwA4xkL8jmTYkYkPMR7kKsM66qd7QkZrt4TAZ
         RhFg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-id:message-id:date:mime-version
         :comments:references:in-reply-to:subject:to:from:delivered-to;
        bh=0wnq6OVffmGf1CZYwsT8PqS1rM7eQSrqNOD0peWYTxc=;
        fh=Yf3ZPTCH8ODmuHmnvxHWy9mzbGB0x6ciuIoVSv1AfsQ=;
        b=PEYKR+3JWQWDfEjo6SVY25QoYB4CKLs3gq0jdamzZLA+kwgX5zzjFdg/QMqGVecSBV
         HOiDECngLaaWSMz1Ogdb57+vPbCia8vOU9Qc45oIo95h9GVMScgJYIOIur2OnlyBCIUp
         z3ZUorTdRWcPRcL2648pulOEhF3NRWV9ZWg39NdmMp92o4A6HbrM2rb6V4nNZb4LQdh0
         I9UihvaVVabOkp/UgeV1ljyFKk0DZEFY+o2GikE7vYLSvnJ7hb51V0rx4RwDwhc06pH4
         /Ja/LCBn00nUeVNjn98LtQshbAFZF54ETKvLh9LcwKqdtATZPJbOU2oJ42StBVD0RgIH
         abgw==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736548119; x=1737152919;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:content-id
         :message-id:date:mime-version:comments:references:in-reply-to
         :subject:to:from:delivered-to:x-beenthere:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=0wnq6OVffmGf1CZYwsT8PqS1rM7eQSrqNOD0peWYTxc=;
        b=Fa4QMe1sDOBr9/5TzXuoqE3+Sx/1mysT1GZ4Ni2EsL51N0R8MK5LBYcEshEZ/EumEM
         2Yb48akIjar1v1YaZNWpasMfDGxO6ggSumxNyxLnm8S4MtqgT9QJ7Uqu58x7vUu0f9tZ
         0jQGgeatEGTLPBQPx2ojS2pMXADHgEQVVxWXOs0QDq4x0qZzDupRUPGeVg0A4vNO7X7n
         p9kXS2Ax8+s1usgGt5PdVN1DELTwef5vTwbuLy3uEEbTCpmK6yayV69t8YEGKPVMSZwz
         hOfxFaJQ/nf1Eagzis07Rw+capml47R1XOxtKP87S7rzEcQxubNbDCh+z4K1anScbvvr
         wRxw==
X-Forwarded-Encrypted: i=2; AJvYcCUyUNrAbbKRH6199bwVyFhGYvv5TcFHDEYMeoM+Q4RmIxcl1CmyNhyV98lJcBo3f85sqsH7Bg==@lfdr.de
X-Gm-Message-State: AOJu0YxV2+ljTnWfhC732iDVOAuAO60qJmE8fIZFIgc+kELCOnHG6Jfw
	W0kJU/ljo95P4ROUYJ4Xdi4V+2ya5cu2VOpD0RD4fLZMOK3CEZD3He75dk3SRSE=
X-Google-Smtp-Source: AGHT+IGPgWC6RTYhmUux7J7qSlIQdXAK2eX5wjxH/DLt83CxUOPXTd6Rz6sb7C+bHPRs6q2NbwgX8w==
X-Received: by 2002:a05:620a:1916:b0:7b6:d998:4fc2 with SMTP id af79cd13be357-7bcd9709c5fmr1849572685a.18.1736548118161;
        Fri, 10 Jan 2025 14:28:38 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:468a:0:b0:6dd:9013:f38f with SMTP id 6a1803df08f44-6dfa37a3b03ls36221416d6.1.-pod-prod-09-us;
 Fri, 10 Jan 2025 14:28:37 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCVNI7V14lA+BjDAOrXYLbiYyzMyXaY38Ko6a7z7sfBS9K5iUhoZjCEsOvhWjNnuigrwkrqhqZLGqsoF0Q==@gapps.redhat.com
X-Received: by 2002:a05:6214:4111:b0:6d8:8416:9c54 with SMTP id 6a1803df08f44-6df9b1ed60bmr218159626d6.16.1736548116999;
        Fri, 10 Jan 2025 14:28:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736548116; cv=none;
        d=google.com; s=arc-20240605;
        b=Z6xeWNI1IwbNLBsXjNy9u0qkAxU4XGnfp9+LcZP76Myif0ZVzU4c1lII2PNzswWuCe
         pRvoy1ulJNzVLkHOwEESVS8GzwVDO0CQD0hAXXmbdim8/Sb/m9trPz5S4Q0g7jDD8nXK
         /sgKrBDIeI2P1cnuaRr4P3mcxUAdu9IEX0Obyj953nkqFN2eu/x/QgO1a2HGGmjqic30
         jJvi7ZFEbk2nbShgVbCDx+buBxh1xHdZGpX7sPwkaZbP6V7jW0bpjf7x30mLsjba/lQW
         rPhuYC/QgVlF8UXqUd1mDbcx+d8Pibno2QAiCJ6rPm0dhRIlxYmjOpEsJ2pVSjCFxL23
         9Wyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-id:message-id:date:mime-version:comments:references
         :in-reply-to:subject:to:from:delivered-to;
        bh=BUdk+OkFFl7JoBLOBpmzNwoX+idNDogca6zijMvdY8w=;
        fh=YXBAxwt+95BfrQ2KSJvIF71c3xemy7gF74ZvtI+w29I=;
        b=hJ/7T6gYi0Z73/077v9Dr5Gshdbhl/zFHmcye4bELmX8VkiIKCRS2Cj6FcdIB4CCLl
         kVcZ++G8e9lqnyrWFYklFBehxpnYIutEufhiP25f5UuIXDcm3krV5c8BTRGwzn83d352
         JcecW0z9di5dAX7iMF9frgUdW5zOSfox8tZT5WMrTtWZBzvh6D0xhgMFP6xWEmbrjtUI
         8dGuwKMpU4dIwqN2D8zQwxBLgZ8PfZ62+WXQKR5L+eDo78yPVo7VfrdJRQDl1miEkys/
         h8RIfTGOdXhbVyFVQq8+22Hlq44/ns2tGEjIPmnNFlfrCBr/BilSucw/5sev7zUbWKvk
         I/+w==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted sender) smtp.mailfrom=martin.m@suddenlink.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id d75a77b69052e-46c873feb26si32951941cf.465.2025.01.10.14.28.36
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 14:28:36 -0800 (PST)
Received-SPF: pass (google.com: domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted sender) client-ip=65.20.63.204;
Received: from mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-572-rvCl6gp_NVaHRjoGIUd9Pg-1; Fri,
 10 Jan 2025 17:28:35 -0500
X-MC-Unique: rvCl6gp_NVaHRjoGIUd9Pg-1
X-Mimecast-MFC-AGG-ID: rvCl6gp_NVaHRjoGIUd9Pg
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-01.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 9E41319560BD
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 22:28:34 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 9ABDC195E3DE; Fri, 10 Jan 2025 22:28:34 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.46])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 976D1195E3D9
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 22:28:34 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 13F581955DC9
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 22:28:34 +0000 (UTC)
Received: from altprdrgo06.altice.prod.cloud.openwave.ai
 (altprdrgo06.altice.prod.cloud.openwave.ai [65.20.63.204]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-540-1GC8k87nNtmKH2ZX9UxvZQ-1; Fri,
 10 Jan 2025 17:28:31 -0500
X-MC-Unique: 1GC8k87nNtmKH2ZX9UxvZQ-1
X-Mimecast-MFC-AGG-ID: 1GC8k87nNtmKH2ZX9UxvZQ
X-RG-VS-CS: clean
X-RG-VS-SC: 0
X-RG-VS: Clean
X-Originating-IP: [47.217.105.81]
X-RG-Env-Sender: martin.m@suddenlink.net
X-RG-Rigid: 67715D1F024FFFBB
X-RazorGate-Vade: gggruggvucftvghtrhhoucdtuddrgeefuddrudegkedgudeitdcutefuodetggdotefrodftvfcurfhrohhfihhlvgemucetnffvkfevgfgfufdpggftfghnshhusghstghrihgsvgdpqfgfvfenuceurghilhhouhhtmecufedttdenucenucfjughrpefhvffujghfgggtsehttddttddttddvnecuhfhrohhmpedfofgrrhhtihhnucfotgevohhrmhhitghkfdcuoehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtqeenucggtffrrghtthgvrhhnpeevtefgheeujefhhfejffekgfehheffteeggfehuddvkeegvdffvdejheeguedtieenucffohhmrghinhepughutghkughutghkghhordgtohhmnecukfhppeegjedrvddujedruddthedrkedunecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehhvghlohepfigshegrghiipdhinhgvthepgeejrddvudejrddutdehrdekuddpmhgrihhlfhhrohhmpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhnsggprhgtphhtthhopedupdhrtghpthhtohepsghlihhnuhigqdhlihhsthesrhgvughhrghtrdgtohhmpdgruhhthhgpuhhsvghrpehmrghrthhinhdrmhesshhuugguvghnlhhinhhkrdhnvghtpdhgvghokffrpegfufdpoffvtefjohhstheprghlthhprhgurhhgohdtie
X-RazorGate-Vade-Verdict: clean 0
X-RazorGate-Vade-Classification: clean
Received: from wb5agz (47.217.105.81) by altprdrgo06.altice.prod.cloud.openwave.ai (5.8.812) (authenticated as martin.m@suddenlink.net)
        id 67715D1F024FFFBB for blinux-list@redhat.com; Fri, 10 Jan 2025 17:28:31 -0500
Received: from martin by wb5agz with local (Exim 4.96)
	(envelope-from <martin.m@suddenlink.net>)
	id 1tWNUP-0008g3-1z
	for blinux-list@redhat.com;
	Fri, 10 Jan 2025 16:28:25 -0600
From: "Martin McCormick" <martin.m@suddenlink.net>
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Google blocking access
In-reply-to: <28b61b1d-d204-4021-a68e-ea755c52ea31@gmx.it>
References: <m3a5bzvek5.fsf@dalen.lamasti.net> <a7efe3c2-71ac-7ad3-21f3-800f38ec6207@QuiteLikely.com> <28b61b1d-d204-4021-a68e-ea755c52ea31@gmx.it>
Comments: In-reply-to "'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com>
   message dated "Fri, 10 Jan 2025 13:16:40 -0500."
MIME-Version: 1.0
Date: Fri, 10 Jan 2025 16:28:25 -0600
Message-Id: <E1tWNUP-0008g3-1z@wb5agz>
X-Mimecast-MFC-PROC-ID: YKUhidp19kpJy5HHlSARdtH4n_6vhdf5zWQksUWuSO0_1736548111
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: G0gPotXW8hBeetI7tMXM2oSz0d_NO82pkIBOuWYRptc_1736548114
X-Mimecast-Originator: suddenlink.net
Content-Type: text/plain; charset="UTF-8"
Content-ID: <33357.1736548105.1@wb5agz.lan>
X-Original-Sender: martin.m@suddenlink.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of martin.m@suddenlink.net designates 65.20.63.204 as permitted
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

Thank you.  That's interesting

	My usual way of doing the web is to start with lynx as in
the cat.  More and more sites now send a nastygram telling one
that javascript is disabled so they're not going to talk to me
but a number of sites still work.  lite.duckduckgo.com still
works and all you see where an ad lurks is the expression "ins"
or several of those if there is a spew of ads but when things do
work, it's a clutter-free experience.

	When l y n x doesn't work, I fire up Windows10 or orca
and use firefox with orca or microsoft edge which I do not care
for do to it's propensity to assume, mostly incorrectly, what I
want to do and try to do other things that I am not interested in
doing.

	It's good to have several possibilities for browsing
since there is no one browser that works for all.
"'Kyle' via blinux-list@redhat.com" <blinux-list@redhat.com> writes:
> I second use of something other than Google, but I would go with
> searx.org or similar instead of DuckDuckGo, which is pretty much just
> Microsoft under the hood ... I mean it even serves Microsoft
> advertising, although maybe the light version doesn't do this. Searx-ng
> is better in any case, as you can even host it yourself. That said, this
> raises the question of how searx-ng gets around Googles requirements,
> since it can access results from Google along with many other search
> engines.
> 
> ~Kyle

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

