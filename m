Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CA96B3E1DAA
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 22:57:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628197048;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=lzTWcNfdty+nS8m/NKwwMYq9f3hIbRPX7J+Eo3b9Sqo=;
	b=Utm2TYCiRihD/GlMHn5lG8+MKp7J6OfWwDVuKm4g4+I+PGTlfni3HWZ+xthulK804FXx5C
	1wzMw7TZMAXMOl9CsazAIJfwRykcLnuA5Js5N1StQJb3h/i7EC5isualPmNV9cQJ3Hy509
	wBYkOxW1twaEhbJN1LJb/pqu01yAKiM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-279-POTKFgsYNj-ex-Yhx4UgfQ-1; Thu, 05 Aug 2021 16:57:27 -0400
X-MC-Unique: POTKFgsYNj-ex-Yhx4UgfQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F376107ACF5;
	Thu,  5 Aug 2021 20:57:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2434369CBB;
	Thu,  5 Aug 2021 20:57:23 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id AB25B181AC06;
	Thu,  5 Aug 2021 20:57:21 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175KpWhu028956 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 16:51:32 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DB64D20149A5; Thu,  5 Aug 2021 20:51:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D71032166B49
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 20:51:29 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id F07A61066682
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 20:51:28 +0000 (UTC)
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-257-4N4Y13V1NxG-2gajEnQZDA-1; Thu, 05 Aug 2021 16:51:27 -0400
X-MC-Unique: 4N4Y13V1NxG-2gajEnQZDA-1
Received: by mail-qk1-f179.google.com with SMTP id 14so7721307qkc.4
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 13:51:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=oU058uLH58F3OpAyin2yxH73aqSvNGZJgiaOCggzkL0=;
	b=FIA+JQeURcMTrvJd2xJN5PKhMeKsvZSTz5wOVmRIEI/doTMc8DMIiQNt6KV681XB+5
	hi+Hxi2axsY1OePwcRsVYqqtkTVWcsO/KpvX8vCF1AfS7fTHyuJATncJCnrZpubpRhJv
	Xj3nw6hbPOXE8ZH5xi4bEx8N78zmttZuiiHhwENuad1sQy0cFx1VNVTkwUEmBgULq4KW
	ye1eawZ3pUmr9x6WFi6+EdbzbkknvXixWelRP7h0OQsn2Dh9omHN+Znt6FtYxDAyaVrm
	Lv0KByK4Pv54RYrzE0XSgGO/ETzaSQ+PXmg7h6F0w5Kon/rAVEdVdOagMJCw4M3mq5nl
	HTbA==
X-Gm-Message-State: AOAM530SbHOZaHg3tPHK1zfNVlvp1iN21/0Sj/Tjk9sB35NxPeRia1v8
	R4jZP6k6Wt7IMVrVvpMaysRgZhJM2Vj2YQ==
X-Google-Smtp-Source: ABdhPJyJPmGa1xuDCRl2QEacksvImtX8we0nber/dUVHYl2ZRtT57het2I4mq3OOHzbMcB2CG4Y+og==
X-Received: by 2002:ae9:e213:: with SMTP id c19mr6763878qkc.451.1628196686401; 
	Thu, 05 Aug 2021 13:51:26 -0700 (PDT)
Received: from thinkpad.example.slint ([2601:192:4c80:1420::cae5])
	by smtp.gmail.com with ESMTPSA id v9sm1946156qtq.77.2021.08.05.13.51.25
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 05 Aug 2021 13:51:26 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
	<dfd09fe5-f568-1553-82a5-650ab234b84d@gmail.com>
	<da3aefc4-efce-2540-9eba-d6ddbd0a6c7e@gmail.com>
	<96BBED50-5B5B-4EED-B882-7CC419DE9B36@gmail.com>
	<224c29c2-1089-4113-ffce-ce3096c1c6c5@gmail.com>
	<EA5E1F3E-DE2D-46DB-B69F-D48C0CE6E337@gmail.com>
Message-ID: <fba4b6d7-3c05-e6eb-ce9c-a1357f6f63b2@gmail.com>
Date: Thu, 5 Aug 2021 16:51:25 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <EA5E1F3E-DE2D-46DB-B69F-D48C0CE6E337@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

WW91IGNhbiBnbyB0byB0aGUgUG93ZXIgcGFnZSwgaW4gc2V0dGluZ3MsIGFuZCBzZXQgdXAgcG93
ZXIgYnV0dG9uIApiZWhhdmlvcnMuwqAgSSBsaWtlIHRvIGhhdmUgbXkgcG93ZXIgYnV0dG9uIGJl
IHRoZSBzaHV0ZG93bi7CoCAKJ2N0cmwrYWx0K2RlbGV0ZScgbWF5IGFsc28gYWxyZWFkeSB3b3Jr
LgoKCgpTZW50IGZyb20gbXkgTGVub3ZvIFRoaW5rcGFkLCBydW5uaW5nIFNsaW50IEdOVS9MaW51
eC4gIGh0dHBzOi8vc2xpbnQuZnIgZm9yIGluZm8KCk9uIDgvNC8yMSA5OjIyIFBNLCBMaW51eCBm
b3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+IEkgYW0gc3VyZSBidWRnaWUgaGFz
IHNvbWUga2V5IHNob3J0Y3V0IGZvciBzaHV0dGluZyBkb3duLgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJs
aW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdA==

