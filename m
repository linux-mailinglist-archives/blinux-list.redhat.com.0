Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id E67FB4970AE
	for <lists+blinux-list@lfdr.de>; Sun, 23 Jan 2022 10:15:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642929313;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=guA0GR67NBT41H3ahwsd4rIp11brNpnmNUqn0/OY3bE=;
	b=I3Y1ePT/pKgQlAH6d/sJp5/IbGkl05jXKXQnkEvchYMZrvJjJRAinTFGUUmInhmojWCStj
	fCHB5KtLtf2n5R7leZ+gtDUg2bYkiQzbNKrp3Yr+FBKSL16MJI+vbwAJr4z2Stw9zkNEA+
	CgfDq3SYkEhY2ndXE/M7Ad80CWOc+LQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-635-osIiZuxxNKmPyD4fzrHv7Q-1; Sun, 23 Jan 2022 04:15:10 -0500
X-MC-Unique: osIiZuxxNKmPyD4fzrHv7Q-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A127C1006AA4;
	Sun, 23 Jan 2022 09:15:06 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 577A24F875;
	Sun, 23 Jan 2022 09:15:02 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 981D81809CB8;
	Sun, 23 Jan 2022 09:14:55 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx09.intmail.prod.int.rdu2.redhat.com
	[10.11.54.9])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20N9ElO3022344 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 23 Jan 2022 04:14:47 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 98C9B492CA5; Sun, 23 Jan 2022 09:14:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast10.extmail.prod.ext.rdu2.redhat.com [10.11.55.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 94D6B492CA3
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 09:14:47 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 7BAB21C07829
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 09:14:47 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
	[209.85.208.47]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-128--dbXmp7bM6ObwQg5yCPgPw-1; Sun, 23 Jan 2022 04:14:45 -0500
X-MC-Unique: -dbXmp7bM6ObwQg5yCPgPw-1
Received: by mail-ed1-f47.google.com with SMTP id m4so50617566edb.10
	for <blinux-list@redhat.com>; Sun, 23 Jan 2022 01:14:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=djNUhiqDz18Yldsyl9/v3647p2pi4swWwcIcRJraL78=;
	b=ULFAfp1eoF2RsiY/moIn8/mdrkVWAz+d3NFFHUtldXLYs92xxSRjS0nxydnpH7oDpu
	gUQyNC006JsG0rlmLgBxjpFYTeEbohlyoHCMh1uikmYlvdz43YSFMQbhpncRj6NtrraK
	H+G0IqZiVndDFB+xEXSACWgGXU/FJiD2wE7T5U1sMKsrbh+/F9tXE+lBbcu3+a7Clv2H
	eGdeNUllXKJgHT14pLheupgS4QDAnGp3AAJ+dV0gZkjoUayAkarSiSEyu0Fis4qzdFQJ
	jVRU9z/XvCp8F13sfHnxH3Ud32G7njxQAUJ6kls52a3k3VAdJWY492NpOB1R3MRizCAg
	75Aw==
X-Gm-Message-State: AOAM531NTiMSH2n6qagij3uVGFmyWD7HX9FRUQ2o/oiIRfK6WTo+BNS0
	MZZaC3vGHRT00TmlqVy2YS1xaqn8TOY=
X-Google-Smtp-Source: ABdhPJwvTecdf3ptorD1bNlaXikQ75Vj0l9bLa+D9fhB9rCGiZE8MxcC0p5nKFAJm1xDYlfuSeQlOg==
X-Received: by 2002:a50:d507:: with SMTP id u7mr10941892edi.273.1642929284100; 
	Sun, 23 Jan 2022 01:14:44 -0800 (PST)
Received: from brandt-slint.study.home ([197.184.176.134])
	by smtp.gmail.com with ESMTPSA id c5sm4723003edk.43.2022.01.23.01.14.42
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 23 Jan 2022 01:14:43 -0800 (PST)
Subject: Re: Favorite out-of-the-box accessible Linux laptops?
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <CABKqQvF9-ZUkr5U6QssKsxhb7oD5iL4tLNORcWNYqJX-HDi9-Q@mail.gmail.com>
	<469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
Message-ID: <e1b844dd-2c47-5217-1978-b775319ea70b@gmail.com>
Date: Sun, 23 Jan 2022 11:14:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <469727D8-F6CD-42D8-96C4-88845662340C@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.9
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
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSBoYXZlIG5ldmVyIGJvdWdodCBhIGxhcHRvcCB0aGF0IGNvbWVzIHdpdGggTGludXggcHJlIGlu
c3RhbGxlZCwgd2h5IApzaG91bGQgSSwgd2hlbiBJIGNhbiBqdXN0IGRvIGl0IG15c2VsZiwgYW5k
IHRoZW4gaW5zdGFsbCBldmVyeXRoaW5nIEkgCndhbnQvbmVlZCBpbiBhIHN5c3RlbS4KCgpNeSBm
YXZvcml0ZSBtYWNoaW5lIHRodXMgZmFyIHdvdWxkIGJlIG15IEh1YXdlaSBNYXRlQm9vayBEMTUu
IEl0IGhhcyBhIAp2ZXJ5IG5pY2UsIGdyYXRlLCBiaWcga2V5Ym9hcmQsIHllcywgYWxzbyBhIHJh
dGhlciBsYXJnZSBzY3JlZW4sIGJ1dCAKd2hhdCBjYW4geW91IGRvPyBUaGUgYmF0dGVyeSBpcyBh
bHNvIHJlYXNvbmFibGUuCgpXYXJtIHJlZ2FyZHMsCgpCcmFuZHQgU3RlZW5rYW1wCgpTZW50IGZy
b20gdGhlIFNsaW50IG1hY2hpbmUgdXNpbmcgVGh1bmRlcmJpcmQKCk9uIDIwMjIvMDEvMjMgMDA6
MTIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gV2VsbCwKPiBG
b3IgbWUgaXQgd2FzIGFsd2F5cyBlaXRoZXIgdGhlIEhQIFBhdmlsbGlvbiBvciB0aGUgRGVsbCBT
YXRlbGxpdGUgbW9kZWxzLiBSZWxhdGl2ZWx5IGVhc3kgdG8gdXNlLCBjb21lIHdpdGggc3RhbmRh
cmQgb3B0aW9ucyBhbmQgYSBuaWNlIGJpZyBrZXlib2FyZC4gWWVzLCBJIGhhdmUgbGFyZ2UgaGFu
ZHMuIEFuZCB5ZXMsIGxpa2UgeW91LCBzY3JlZW4gc2l6ZSBpc27igJl0IGltcG9ydGFudCB0byBt
ZS4gU3RpbGwsIHdpdGggYSBsYXJnZXIgc2NyZWVuIHRoZXJlIGlzIHZpZGVvIGNhcGFiaWxpdHkg
dGhhdCBjYW4gYmUgcmV0YXNrZWQgZWFzaWx5IGVub3VnaC4gQWxzbywgc2luY2UgbW9zdCBsYXB0
b3BzIG9mdGVuIHVzZSBzY3JlZW4gc2l6ZSBhcyBhIGRlcGVuZGluZyBmYWN0b3IsIGEgbGFyZ2Vy
IG9uZSB3aWxsIGhhdmUgdGhlIGFkdmFudGFnZSBvZiBhIGxhcmdlciBrZXlib2FyZC4KPgo+IC1F
cmljCj4KPgo+PiBPbiBKYW4gMjIsIDIwMjIsIGF0IDE6MTYgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBJ
IGFtIGxvb2tpbmcgZm9yIGEgTGludXggbWFjaGluZSB0byB1c2UgaW4gZ3JhZHVhdGUgQ1MgY291
cnNlcy4gSSBwcm9iYWJseQo+PiB3YW50IFVidW50dSBvciBhbm90aGVyIGNvbW1vbiBkaXN0cm8g
dGhhdCBjb21lcyB3aXRoIHRoZSBzY3JlZW4gcmVhZGVyIChJCj4+IGFzc3VtZSBPcmNhKSBhbmQg
b3RoZXIgYTExeSBzdHVmZiBhbHJlYWR5IGluc3RhbGxlZC4gSSBsaWtlIHNtYWxsLCBsaWdodAo+
PiBsYXB0b3BzIChzaW5jZSBJIGRvbid0IHVzZSB0aGUgc2NyZWVuKSB0aGF0IGhhdmUgZGVjZW50
IG1lbW9yeSBhbmQgYmF0dGVyeQo+PiBsaWZlLiBXaGljaCBtYWNoaW5lcyBhcmUgeW91ciBmYXZv
cml0ZXMuCj4+Cj4+IFRoYW5rcyBmb3IgdGhlIHRpcCBvbiBWbVdhcmUgdGhlIG90aGVyIGRheSwg
QlRXLgo+Pgo+PiBBbWFuZGFbMF0KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0
QHJlZGhhdC5jb20KPj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo+Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRo
YXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGlu
dXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
QmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9s
aXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

