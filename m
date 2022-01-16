Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 8961C48FE76
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 19:32:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642357957;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=mx4OjHKyTnqI3ce+Y3zOdNcGbrZcSB7Te0hnvVAae9U=;
	b=PzDqjzaQ7lJ98VWIs7p4O+6HrlwpuBGMBlvsFTqtlf9NihFlSDQR/BmTCsyQUQzT9aGJQH
	gRzMrum1m/8QoT9CNEkHgbJUVsy8Y0UeGzXwjPBmxMf1Inyd9WG/jIqqQzXp6D5cYf2ShX
	y3HLgJwGb0zlRP8US6bmBCDGBt0S2yM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-668-ASCxMBINMpCQuJBG4bc0rw-1; Sun, 16 Jan 2022 13:32:34 -0500
X-MC-Unique: ASCxMBINMpCQuJBG4bc0rw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A1B9D1083F60;
	Sun, 16 Jan 2022 18:32:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9E8B810A33C9;
	Sun, 16 Jan 2022 18:32:26 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E3F851809CB8;
	Sun, 16 Jan 2022 18:32:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GIWB9f006059 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 13:32:11 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 3DB772166B3F; Sun, 16 Jan 2022 18:32:11 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 374222166B25
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 18:32:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id ED765811E76
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 18:32:07 +0000 (UTC)
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com
	[209.85.166.177]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-73-quhSh6EQO-CzzH7xhUoD_Q-1; Sun, 16 Jan 2022 13:32:06 -0500
X-MC-Unique: quhSh6EQO-CzzH7xhUoD_Q-1
Received: by mail-il1-f177.google.com with SMTP id h30so12914095ila.12
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 10:32:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:reply-to:subject:to:references:from:message-id
	:date:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=/uvCiQUvu6WGoMrCoPE3f01O/Vjpac/rO8qdHeD/YWc=;
	b=m6lOhv4pU+ZPRtXYNC8K+F+zYoDWtbPbHsrtpU6TFruPzv8fcpHOQH4eGEcS1+I+ix
	A5wifPny5YR3m031cibjfWeNkD0J7zzX2Aq+Vnq/Mvd/ov42wsuxvZ7LbBnkews1+BhJ
	4bc8Pe/L7u+VDbcuM3xmpCWbo+XT2G6LDMy8LWjPyjpQkfltlVcrKQZf+0cIA7esWWol
	JcVrhPfCcZh2DfJFPWzenIcy2VxQDc5AQz296HlLOazr5Bu1cLSFaAcriG+wYpJiDnHN
	f2UHv7jqo3L+vroeI/vumFarFbWDZSZ5lA6vRny/DRNOdZ4XIitl896BzPhOWWztSxbD
	CwLw==
X-Gm-Message-State: AOAM533duMxjw2IqRNLhLXIqRTjODoG9VmLc6mC6hHeNuKhnFdfknq5M
	N2JE4JDU5Ue6czf6nh7AWXEzgnlkeFo=
X-Google-Smtp-Source: ABdhPJyDMmiaNjdGTh3tK9XtuuHONfxsqEAt16m2Yse031ne+h8Ps5mYIRRndpDAhIy+XDoZSFXxbg==
X-Received: by 2002:a05:6e02:17c5:: with SMTP id
	z5mr5065369ilu.73.1642357925263; 
	Sun, 16 Jan 2022 10:32:05 -0800 (PST)
Received: from ?IPv6:2600:1700:9434:2a00:5d30:9953:1365:e208?
	([2600:1700:9434:2a00:5d30:9953:1365:e208])
	by smtp.gmail.com with ESMTPSA id m11sm3112138ila.3.2022.01.16.10.32.04
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 10:32:05 -0800 (PST)
Subject: Re: possability of linux install question
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<dd60f509-3da5-6305-e020-49f7d92d16f6@slint.fr>
Message-ID: <208af8c4-7333-9d61-067d-0c9ced94c763@gmail.com>
Date: Sun, 16 Jan 2022 12:32:04 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <dd60f509-3da5-6305-e020-49f7d92d16f6@slint.fr>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

VGhhbmsgeW91IERpZGllcizCoCBJIGhhdmUgbG9va2VkIG92ZXIgdGhlIHdlYnNpdGUgYW5kIGRv
d25sb2FkZWQgbG90cyBvZiAKcmVhZGluZyBtYXRlcmlhbC7CoCBUbyBtYWtlIGEgcG9ydGFibGUg
Y29weSBpcyB3aGF0IEkgd2lsbCB0cnkgdG8gZG8uwqAgQSAKYml0IG1vcmUgcmVhZGluZyBiZWZv
cmUgSSBjYW4gZ2V0IHN0YXJ0ZWQuCgpIb3dhcmQKCgpPbiAxLzE2LzIwMjIgMTE6MDUgQU0sIExp
bnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSGkgSG93YXJkLAo+Cj4g
V2hhdCB5b3UgY2FuIGRvIGlzIGluc3RhbGwgU2xpbnQgb24gYSByZW1vdmFibGUgZHJpdmUsIGxp
a2UgYW4gVVNCIGF0dGFjaGVkIFNTRAo+IG9yIGhhcmQgZHJpdmUuCj4KPiBBZnRlciBpbnN0YWxs
YXRpb24geW91IHdpbGwgYmUgYWJsZSB0byBzdGFydCBTbGludCBvciBXaW5kb3dzLCB3aGljaCB3
aWxsIHN0YXkKPiB1bnRvdWNoZWQuCj4KPiBBbGwgeW91IG5lZWQgdG8ga25vdyBpcyBpbiBodHRw
czovL3NsaW50LmZyL2RvYy9IYW5kQm9vay5odG1sIGluY2x1ZGluZyBob3cgdG8KPiBnZXQgc3Vw
cG9ydC4gVGhlIFNsaW50IG1haWxpbmcgbGlzdCBpcyBhIHZlcnkgZnJpZW5kbHkgb25lLgo+Cj4g
V2hlbiBhc2tlZCBhdCB0aGUgYmVnaW5uaW5nIG9mIGluc3RhbGxhdGlvbiBqdXN0IGNob29zZSB0
aGUgImF1dG8iIGluc3RhbGxhdGlvbgo+IG1vZGUuCj4KPiBDaGVlcnMsCj4gRGlkaWVyCj4gLS0K
PiBEaWRpZXIgU3BhaWVyCj4gU2xhaW50IG1haW50YWluZXIKPgo+IExlIDE2LzAxLzIwMjIgw6Ag
MDA6MTUsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNyaXTCoDoKPj4g
SGVsbG8gYWxsLAo+Pgo+PiBJJ3ZlIGJlZW4gd2FudGluZyB0byB0cnkgb3V0IGxpbnV4IGJ1dCBo
YXZlbid0IHdhbnRlZCB0byBnaXZlIHVwIG9yIG1lc3MgdXAgYW55Cj4+IG9mIG15IHdvcmtpbmcg
d2luZG93cyBzeXN0ZW1zLsKgIFdvdWxkIGl0IGJlIHBvc3NpYmxlIHRvIGluc3RhbGwgc29tZSB2
ZXJzaW9uIG9mCj4+IGxpbnV4IG9uIGEgQ0Qgb3IgYSBEVkQ7IHRoZW4ganVzdCBib290IGEgY29t
cHV0ZXIgZnJvbSB0aGF0IGRpc2sgYnlwYXNzaW5nCj4+IHdpbmRvd3MgYWx0b2dldGhlcj/CoCBJ
ZiBzbywgSSdkIGhhdmUgdG8gbWFrZSBpdCBlaXRoZXIgdGFsayBvciBkcml2ZSBhIEJyYWlsbGUK
Pj4gZGlzcGxheS4KPj4KPj4gV29uZGVyIGlmIGFueW9uZSB3b3VsZCBoYXZlIGFueSBzdWdnZXN0
aW9ucz/CoCBUaGFuayB5b3UuCj4+Cj4+IEhvd2FyZAo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhh
dC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

