Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	by mail.lfdr.de (Postfix) with ESMTP id BB2DE1ED80E
	for <lists+blinux-list@lfdr.de>; Wed,  3 Jun 2020 23:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591219689;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=/4f/o8aJ0pEA/e5bEcdHMKOL2Uk1cAabBEr+ABqsy0I=;
	b=RUFp6uYNxDGANKF37ud14Qk5Mk8YSojczbY5vby9IvM5XcB1TRrETZ/E9acbSX9oPmntfY
	chTPoI7fX8rwHpRDJLSUrW3+6yS+MP82kBh1CxF62bxGxyDrpbERIOrNYgyXSzY8r6wbCR
	GB3FdP9pEqkqXc4983TBAUQ7hkd3jS0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-247-sZgguIxqN6izvnBIEZCq7Q-1; Wed, 03 Jun 2020 17:28:03 -0400
X-MC-Unique: sZgguIxqN6izvnBIEZCq7Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 291231883602;
	Wed,  3 Jun 2020 21:27:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 528996AD00;
	Wed,  3 Jun 2020 21:27:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 2616E97029;
	Wed,  3 Jun 2020 21:27:43 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 053LRVNm028851 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 3 Jun 2020 17:27:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 86C381121318; Wed,  3 Jun 2020 21:27:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82D471018E6C
	for <blinux-list@redhat.com>; Wed,  3 Jun 2020 21:27:28 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7E681185A78B
	for <blinux-list@redhat.com>; Wed,  3 Jun 2020 21:27:28 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
	[209.85.218.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-141-oLB17TZ9PaWCirFowQB1Ng-1; Wed, 03 Jun 2020 17:27:25 -0400
X-MC-Unique: oLB17TZ9PaWCirFowQB1Ng-1
Received: by mail-ej1-f43.google.com with SMTP id a25so3754221ejg.5
	for <blinux-list@redhat.com>; Wed, 03 Jun 2020 14:27:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=eNWu2zBTmYIw9GuWC3nhztm0iahxL7iiZunxtpwp4Zg=;
	b=jmnU66as80oBDeKc6vwMEmn5Bdi+OsseSZ/G7IQR8KEnwzAsrtT/EdRhT9+kvnPSw6
	O64D9b/4KFXsONVliBK+5wc+XoLPZNBr6OL9nIHGpz8YMwLuUbE2knibQcSKEKW/s5DL
	I3R9oRh8+cqU0KKwbuLiSo6Eedtj7pz3cLpsBZqrrlJWTIEenvQvIhsGQFsZNpUPiYy/
	nZOpcwgHdpbrxN05fFRuiiKJhU7KPYvuKjq8bFD7BN3qh8ISCtiWsPml/8n5tFfy9prs
	6FXXod+bmxhGNsvULg70KHG79Y2KlmXJS/+dOLfIQ7wED9utPXk6eCBq/xqmvu7Sh2lV
	kyBA==
X-Gm-Message-State: AOAM532EeeDEUcucQAE4pksFFvTVK5lkMvKkXQaCEdBAhjuMIdMHEvJh
	TyoFKMTWy2WhBr5gWyB3pwkPZykj9OY=
X-Google-Smtp-Source: ABdhPJwsw2DmxY81jUrN5o8yL6JfyQH/8M5ih/6Byb97UiKEog6P3f+MRNGNQPWzVw+kDTwUTdzmPA==
X-Received: by 2002:a17:906:4350:: with SMTP id
	z16mr1126015ejm.139.1591219644089; 
	Wed, 03 Jun 2020 14:27:24 -0700 (PDT)
Received: from [192.168.0.14] ([45.222.12.22])
	by smtp.gmail.com with ESMTPSA id
	b14sm356005ejq.105.2020.06.03.14.27.22 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 03 Jun 2020 14:27:23 -0700 (PDT)
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Tiling WM with Orca, anyone?
Message-ID: <19fe1f20-9bc7-9fc7-6702-a34021279d54@gmail.com>
Date: Wed, 3 Jun 2020 23:27:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.8.0
MIME-Version: 1.0
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-loop: blinux-list@redhat.com
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.12
Precedence: junk
Reply-To: blinux-list@redhat.com
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://www.redhat.com/mailman/options/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <https://www.redhat.com/archives/blinux-list>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://www.redhat.com/mailman/listinfo/blinux-list>,
	<mailto:blinux-list-request@redhat.com?subject=subscribe>
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

SGkgZXZlcnlvbmUsCgpJIG5lZWQgdG8gaW5zdGFsbCBhIGRpc3RybyBvbiBhIG1pbmltYWxpc3Qg
bWFjaGluZSBmb3IgYSBibGluZCBMaW51eCAKbmV3YmllLCBidXQgaW4gdGVzdGluZyBldmVuIE1h
dGUgaXMgaGF2aW5nIGlzc3Vlcy4gT2ssIGl0J3MgYSBwaWVjZSBvZiAKanVuaywgYnV0IGFsbCB0
aGUgZ3V5J3MgZ290LgoKSSB3YXMgdGhpbmtpbmcgc29tZXRoaW5nIGxpa2UgaTMsIGJ1dCBteSBy
ZXNlYXJjaCBzaG93cyBpc3N1ZXMuIFdoYXQgCndvdWxkIHlvdSBzdWdnZXN0PyBUaGUgbWFjaGlu
ZSBpcyBwcm9iYWJseSBvbGQgZW5vdWdoIHNvIEkgY291bGQgaGF2ZSAKYm91Z2h0IGl0IHNlY29u
ZCBoYW5kIHdoZW4gSSBmaW5pc2hlZCBoaWdoIHNjaG9vbCAxNiB5ZWFycyBhZ28uCgotLSAKV2Fy
bSByZWdhcmRzL0dyb2V0bmlzL0hlcnpsaWNoZSBHcsO8w59lLAoKQnJhbmR0IFN0ZWVua2FtcAoK
U2VudCB1c2luZyBUaHVuZGVyYmlyZCBmcm9tIFVidW50dSBNYXRlIDIwLjA0CgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

