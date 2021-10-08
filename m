Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id A7317426172
	for <lists+blinux-list@lfdr.de>; Fri,  8 Oct 2021 02:44:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1633653875;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PLLIywvCGAsvkUjREq12otw6QY+YV6bhn5IVDrLNP7Y=;
	b=Qcaql8tykgcpBqBUuSIgopp/TCRTrh++Fp3UMig94VqCeAtFNedxLUqVyWZ9+FXcq1Fq9v
	y+r5YRcXdgLv2+0I27P54VU/LACh78DEccebCJUbSikgaOhFKeCQVho//UqjKws6Vr9H6l
	vjKtEURtOcBpcIJMQZodSNYnI5WdWTo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-332-P5pvMs1hMdqgoMUhHjQAGw-1; Thu, 07 Oct 2021 20:44:34 -0400
X-MC-Unique: P5pvMs1hMdqgoMUhHjQAGw-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2ADAF1235A90;
	Fri,  8 Oct 2021 00:44:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1B4FF60C2B;
	Fri,  8 Oct 2021 00:44:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D1AB71800B8B;
	Fri,  8 Oct 2021 00:43:56 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1980hn6k026822 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 7 Oct 2021 20:43:49 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 193722157F26; Fri,  8 Oct 2021 00:43:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1297F2157F23
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:43:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B8958811E76
	for <blinux-list@redhat.com>; Fri,  8 Oct 2021 00:43:42 +0000 (UTC)
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com
	[209.85.222.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-162-QNFWBNkeMAGavFghBRjzDA-1; Thu, 07 Oct 2021 20:43:31 -0400
X-MC-Unique: QNFWBNkeMAGavFghBRjzDA-1
Received: by mail-qk1-f175.google.com with SMTP id t63so3142174qkf.1
	for <blinux-list@redhat.com>; Thu, 07 Oct 2021 17:43:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=Zca8P7IB63DwX+nQFaiKR3wKSSQaYHJAOp2dZ8qfyvE=;
	b=MsOQfc7nM7E1dBkkdB0U/8cnDq7rMdc7+378xk1A6uRsBbOwwM3ZqSnw5Xl+zbtVgc
	Tp+X4kKRupCJ2avVE6wIREYkDOb5r/zavweQJ3Vnyj0USlM4z8ybzn7/i/3uZg8FEVAD
	S82ZJZERGxTyItfRn1tmqNzsmv/88VVstqF7v+RBTqkbfc6e7lyBq5Ac4xFESVxd0nL2
	U+DEFU7CXpJbmQfkWjT/o7vIyZXmb7ahcc0KYmeusCDRc3OnL+PihaQ0Xtgia8KO4JzS
	qnul7VRu0dewOhV6fylbYgPBjJ/kaQYehpVIAF3GtTdnGmeoyNqpUsPaIL+lhHP0LheU
	oXpQ==
X-Gm-Message-State: AOAM533WpJ2YwrmhGAr+PC5t52IcJ+VUbeWKdoU+hYB0BDSnniG6SN9h
	/hFgmNqEoUHI3aKaP4kH+oOnKPgXjmVJ9g==
X-Google-Smtp-Source: ABdhPJwoxLDsxbkn5wOUyjjfr07E1+TsS7eQJkE/pnZWM93gB2gB3H40mzmFvuP8eW7Uu/RcKyAm2A==
X-Received: by 2002:a37:9581:: with SMTP id x123mr411710qkd.477.1633653811094; 
	Thu, 07 Oct 2021 17:43:31 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420:9f4f:c8b4:2dce:36f7?
	([2601:192:4c80:1420:9f4f:c8b4:2dce:36f7])
	by smtp.gmail.com with ESMTPSA id
	s203sm818277qke.21.2021.10.07.17.43.30 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 07 Oct 2021 17:43:30 -0700 (PDT)
Subject: Re: Mate Desktop questions
To: blinux-list@redhat.com
References: <4037ad15-b52e-f0a5-4af5-2b8b6f782205@gmail.com>
	<20210715.162227.936.10@[192.168.1.100]>
	<a648b4d5-d8a0-cb1b-1a65-b8e515dd2fcc@gmail.com>
	<765675B0-8A52-46FD-AEBD-E14DD89F221C@gmail.com>
	<d11bed68-9e1c-bb1e-532f-736f45cbf0ce@gmail.com>
	<bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
Message-ID: <70eaca5a-3240-bcf5-941b-4ef57f031b44@gmail.com>
Date: Thu, 7 Oct 2021 20:43:30 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.13.0
MIME-Version: 1.0
In-Reply-To: <bf6f76af-bc13-f826-8c91-ff8b6a3dbba6@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

WWVzLCBidXQgaXQncyBiYXNlZCBvbiB0aGUgTFRTIHZlcnNpb25zIG9mIFVidW50dS7CoAoKCi1E
YXZlwqAgSC4KCgoKT24gMTAvNy8yMSA4OjA1IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uIHdyb3RlOgo+IElzbid0IExpbnV4IE1pbnQgc3RpbGwgYmFzZWQgb24gVWJ1bnR1
PwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4
LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFu
LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

