Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DB057479C17
	for <lists+blinux-list@lfdr.de>; Sat, 18 Dec 2021 19:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639852774;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=yqebMizc/j1T6B3kBo0QW9Bw7tpiJ2ZtEQg2u5PmXN0=;
	b=dtei3bNk91zFfVGJ7R+akm1Q5zQrglg1yaTrnSaimFdmY3Dw75HHQTpBP7RiIlzEPP/5nG
	FWhbOiiqZHkc2cLrPFxLoNKpBcNIgYV/cWZ6fEY3UmPswsLV/NK0f/pe4K9PANwgnf2zyr
	FIgsL00EStOWuOwylleZek9dyFRL4s0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-113-ySZMbFGvOC-fA2SV-4aKUA-1; Sat, 18 Dec 2021 13:39:30 -0500
X-MC-Unique: ySZMbFGvOC-fA2SV-4aKUA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id DB31418397A7;
	Sat, 18 Dec 2021 18:39:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1ADBD5BE08;
	Sat, 18 Dec 2021 18:39:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E28684BB7C;
	Sat, 18 Dec 2021 18:39:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BIId4wj017076 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Dec 2021 13:39:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 478B91120AC7; Sat, 18 Dec 2021 18:39:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 42D9E1120AC6
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 18:39:01 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 659A0185A79C
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 18:39:01 +0000 (UTC)
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-344-Be6i63UnMbuk0B5FaVmxnA-1; Sat, 18 Dec 2021 13:38:59 -0500
X-MC-Unique: Be6i63UnMbuk0B5FaVmxnA-1
Received: by mail-wr1-f44.google.com with SMTP id v11so10687398wrw.10
	for <blinux-list@redhat.com>; Sat, 18 Dec 2021 10:38:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=osJPdyQOm+n9fnEWLdwxXN1j1nHyhc9yWHnCwy8IskY=;
	b=t3qOGu+dixs3cwNOkriL8rv1NofBJZEmcFd+KGLRf9By6l9jB/W7YgvJWLjs3EEuwb
	o/kJeCddgnR7kIhdiloWZEvXFXjzzlZ0hDJlwPkNXMwPRN2dsxsvsMSUUyZjAZEB9gJH
	garD6lEUGrlHGczbG/RbQlhRuVEuaU9DUT+pJtTRlATkoYewN72Mh9tMGJpp21K68QnF
	kQG7mEKUBSRxCj6WcI6W3c1D0Unr5z2SWJKJv0qvKQGMWrK5ceCQmSdBnVf7MFCCD0Bh
	xSrTdXACZ9t9BsSpi+0220ins9nMq5E8SfjTozEW4l5DyiwirfI7Je6tBQd7oOZQy2bT
	8CXg==
X-Gm-Message-State: AOAM53252rt9aX8yGYYj1ysAK4Pz6e1y05CcY+Uvyn90meCW2YisYP36
	frAKUWbIW9mABnIA3Y1ahRU7fK++233CUQ==
X-Google-Smtp-Source: ABdhPJw4TgxTW/jI0XFilsgJELxsSrVUpNUdtVUh22PFGUkcpxjbsxpy7V7KG98FLNThWfQUdsBLAw==
X-Received: by 2002:a05:6000:1a41:: with SMTP id
	t1mr7123250wry.261.1639852738140; 
	Sat, 18 Dec 2021 10:38:58 -0800 (PST)
Received: from [10.0.2.15] ([90.251.213.111]) by smtp.gmail.com with ESMTPSA id
	o10sm2318522wrc.55.2021.12.18.10.38.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 18 Dec 2021 10:38:57 -0800 (PST)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Fenrir/Python 3.10
Message-ID: <6151d202-502c-b7e5-a9ac-d23b3f508d49@gmail.com>
Date: Sat, 18 Dec 2021 18:38:56 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Firefox/60.0 SeaMonkey/2.53.9.1
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://listman.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

IMKgwqDCoCBTaW1wbGUgb25lLgoKSGFzIEZlbnJpciBiZWVuIGJ1aWx0IGFnYWluc3QgUHl0aG9u
IDMuMTAgeWV0LCBvciBub3Q/IEkndmUgbm90IGhlYXJkIGlmIAppdCBoYXMgc28gZmlndXJlZCBJ
J2QgYXNrIHNpbmNlIG15IEFyY2ggYm94IGlzIGFsbCBvbiBQeXRob24gMy4xMAoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGlu
ZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

