Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C015452852
	for <lists+blinux-list@lfdr.de>; Tue, 16 Nov 2021 04:14:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1637032473;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=VDt0wluTXTbfP04AKOfcVGqjJJlgZUDXGMjhU4srZmc=;
	b=jUHmhkMbreMAGwct2go/Cfv3CrJVMcBqkVii2+PVe1JkzPkRy4RZTcOsNWrehUlm3m54pz
	ZfUXO/RRCp3Lvie03n0/uU9aJUAbvCrFCsGkhmHfUyZRrp0vhckWqpJAa/IkNkMctN1pPC
	l51bCZRPoozZ/w3OpO8fmxPqAYjUOVA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-159-d2x4C0wcNTmaWT8iZvoREg-1; Mon, 15 Nov 2021 22:14:29 -0500
X-MC-Unique: d2x4C0wcNTmaWT8iZvoREg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 761DF1006AA3;
	Tue, 16 Nov 2021 03:14:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 52D475C232;
	Tue, 16 Nov 2021 03:14:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 88DAA4A703;
	Tue, 16 Nov 2021 03:14:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1AG3EESo015089 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 15 Nov 2021 22:14:14 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 84902404727D; Tue, 16 Nov 2021 03:14:14 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 80106404727A
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 03:14:14 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 68C7A181E061
	for <blinux-list@redhat.com>; Tue, 16 Nov 2021 03:14:14 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
	[209.85.222.176]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-494-QpM3kfX5M3mMbAbFR0UoGQ-1; Mon, 15 Nov 2021 22:14:12 -0500
X-MC-Unique: QpM3kfX5M3mMbAbFR0UoGQ-1
Received: by mail-qk1-f176.google.com with SMTP id j63so14824955qkd.2
	for <blinux-list@redhat.com>; Mon, 15 Nov 2021 19:14:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=SkCUq9eJwIxvdNDRrOtJ3Nnts4mTNtia1I+PwNhLM54=;
	b=gwnvrhocjcFmPSMiEx3xQ3/JwTYHx3NZedYDMIJXEvW8x8bWIUIvkCY9m4SEsrzSMw
	wN4/MKo0OHuh5zKICRkfuE7rqjCIXNtDM1RFzq+GNmS0D0qXmQHpdDTksL6g9NGXQN5D
	W+amxCRLZ9vAhKJae5hrdVCQwebV/+mkPwT6hLMpp9u3HHwz47pbqlF4xNlrakEfRsLs
	/PfLSCptd/QinuC5xgv4vrjoKLmhXXXqJluRqokaj7548qgLpUhUoDA9h94Zwnzo0jS0
	0yffd3Xyfj4pNJTS3KBg9lP3jiQhIjDkSk/Y7k1djB+zT4ymWbTkMA1rixjxX3WtURUV
	WOWA==
X-Gm-Message-State: AOAM532zEU6mCIIPWhO7NjQw394oNJiN2klkek+w4bivS/fzaTToN4fJ
	eowroSbW0346/hjQyLq12FyeBvGzFzzsCA==
X-Google-Smtp-Source: ABdhPJwelmcA+73OKvejuCQZsyZHbwayp117I/VUSbFHG7z4InLAwU0dtCCciHaSdsTq6ao4PdOJ4A==
X-Received: by 2002:a05:620a:2052:: with SMTP id
	d18mr3409367qka.411.1637032451929; 
	Mon, 15 Nov 2021 19:14:11 -0800 (PST)
Received: from ?IPv6:2601:192:4c80:1420:4898:8996:6f77:3c17?
	([2601:192:4c80:1420:4898:8996:6f77:3c17])
	by smtp.gmail.com with ESMTPSA id
	bi6sm6433057qkb.29.2021.11.15.19.14.11 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Mon, 15 Nov 2021 19:14:11 -0800 (PST)
Subject: Re: any good accessible OCR for linux?
To: blinux-list@redhat.com
References: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
Message-ID: <5d341506-7ff2-cac3-b6bc-b69220f2cb49@gmail.com>
Date: Mon, 15 Nov 2021 22:14:10 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Icedove/78.14.0
MIME-Version: 1.0
In-Reply-To: <41060758-1e8a-076a-88d4-873d65369532@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

U2luY2UgeW91IGFscmVhZHkgaGF2ZSBzbGludCwgeW91IGhhdmUgYSBnb29kIG9jciB0b29sIGNh
bGxlZCBsaW9zLiBMb29rCmZvciBpdCBpbiB5b3VyIEdyYXBoaWNzIG1lbnUuwqAgVGhlIG9jciBw
YXJ0IGlzIGFjdHVhbGx5IGRvbmUgYnkgdGhlCnByb2dyYW0gY2FsbGVkIFRlc2VyYWN0LsKgIFRo
ZSBvdGhlciBwYXJ0cyBvZiBMSU9TIHRha2UgY2FyZSBvZgpjb250cm9saW5nIHlvdXIgc2Nhbm5l
ciBhbmQgZ2l2aW5nIHlvdSBwcmVzZW50YXRpb24gb3B0aW9ucy7CoCBJJ3ZlIHVzZWQKTElPUyBm
b3IgcmVhZGluZyBkb2N1bWVudHMgdGhhdCBhcmUgYWN0dWFsbHkgaW1hZ2VzLCBhcyB3ZWxsIGFz
IHNjYW5uZXIKb3V0cHV0LsKgCgoKSWYgeW91IGxlYXJuIGVtYWNzcGVhaywgeW91J2xsIGZpbmQg
dGhhdCBpdCwgdG9vLCBoYXMgc2Nhbm5lciBhbmQgb2NyCmNhcGFiaWxpdGllcy7CoCBBZ2Fpbiwg
SSB0aGluayBUZXNlcmFjdCBkb2VzIHRoZSBoZWF2eSBsaWZ0aW5nLsKgCgoKCkhUSCwKCgoKRGF2
ZcKgIEguwqAgPGthMWNleUBnbWFpbC5jb20+CgoKClNlbnQgZnJvbSBteSBIUCBQcm9ib29rIGFu
ZCBUcmlzcXVlbCBHTlUvTGludXgsIHZlcnNpb24gMTAuMCAocHJlLXJlbGVhc2UpCmh0dHBzOi8v
dHJpc3F1ZWwuaW5mbwoKT24gMTEvMTUvMjEgOTo1MyBQTSwgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBPa2F5IGZyaWVuZHMsCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

