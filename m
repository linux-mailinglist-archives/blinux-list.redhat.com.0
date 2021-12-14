Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 622C34741D5
	for <lists+blinux-list@lfdr.de>; Tue, 14 Dec 2021 12:50:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1639482656;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=6h6dlnTHjFY/wweGXZPzHIHLqhw1k+dQuZ6fr2ycXnA=;
	b=LoCcYuNEgkptc4Bi0MrlJF516OIpg7d/FTOhrU1YzHfGQNCgfPqYp3DzNc6/4duPwvP86b
	ufj8aHBZg7mqPYIEGVV5Im26i3xucoqXxjvH6kCCcr+QpNvxq2y61aJGB+NuilvdnO+NdG
	0ykCkXi9arrIjOi/2cZlWG5Q1mykHpc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-193-opBqtGNIP1uPfG-u9MujKw-1; Tue, 14 Dec 2021 06:50:52 -0500
X-MC-Unique: opBqtGNIP1uPfG-u9MujKw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E80991006AA0;
	Tue, 14 Dec 2021 11:50:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CBC1519EF9;
	Tue, 14 Dec 2021 11:50:48 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EC5BE1809CB8;
	Tue, 14 Dec 2021 11:50:47 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1BEBofTR025046 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 14 Dec 2021 06:50:41 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id BCFAC40D1B98; Tue, 14 Dec 2021 11:50:41 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B907E40C1247
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 11:50:41 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A00E5185A79C
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 11:50:41 +0000 (UTC)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com
	[209.85.221.41]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-353-O2Nrw-7xPOeAiWTxn9dg2g-1; Tue, 14 Dec 2021 06:50:40 -0500
X-MC-Unique: O2Nrw-7xPOeAiWTxn9dg2g-1
Received: by mail-wr1-f41.google.com with SMTP id d9so31964971wrw.4
	for <blinux-list@redhat.com>; Tue, 14 Dec 2021 03:50:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
	:content-language:to:references:from:in-reply-to
	:content-transfer-encoding;
	bh=HNK0SGZ8xb00oUT8VY+TQw6Pa66UheaCiD+x9pmadwE=;
	b=N4/qSBmPWM0bvB6CgFwrHChgznMdWZbcGXVRcWYf/gmLf4RlfsDp8UsTQ6/AGgdXRo
	PmsCUazsRDw1YJDURy3/6TXdhIFlkvfyObxeGSE7P/iMBNo9pR+rutftLoL5Ov84HLx3
	3AICAY/z553jrpyIe+W7Z3OOFNOjlBWwhtc+RA5arOe2tbD14Z/i+eay9cwXVjNecZt8
	SawQtXP6g85ruKn4TtTJLQYAFXzScAW7+Nd2o4JPDR5+otyJ0Y0Hlt6v11UDCm//NbYX
	PAUfTM8mKz9ta4KCjQ8gdRzChr90vGw0+aTnQ+tMGuqsVY7PqLoz4tqDrT3JSraoxDxz
	qs8w==
X-Gm-Message-State: AOAM531IewR/RmA96L5dI9bDVpWZi3xGKFrXBGuIUWjUMnuR4XfirjAl
	MHxpPlzvZSURpeaSNTvyIgX5qXKtDs6+Mg==
X-Google-Smtp-Source: ABdhPJwy0ZVponWDL1ZqMdKw3LdFpyZzKyL/8gMRF9uWNjoYbO9u021zrxCYB/nwoAtJUWpG1jvUrQ==
X-Received: by 2002:adf:e9c5:: with SMTP id l5mr5160262wrn.218.1639482638548; 
	Tue, 14 Dec 2021 03:50:38 -0800 (PST)
Received: from [192.168.8.130] ([197.184.183.90])
	by smtp.gmail.com with ESMTPSA id
	h18sm14774199wre.46.2021.12.14.03.50.37 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 14 Dec 2021 03:50:38 -0800 (PST)
Message-ID: <0fb25799-2064-5123-b645-5779fe020c0f@gmail.com>
Date: Tue, 14 Dec 2021 13:50:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.0
Subject: Re: Attempting a Jenux install, again.
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <1C2D6AE2-C6C3-4776-AE48-7265C64E8C87@gmail.com>
	<426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
In-Reply-To: <426b2a95-a664-626f-971f-ecea89acc81c@gmail.com>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKSmVudXggZmFpbGVkIG9uIG1lLCBhZ2Fpbi4gSSB0aGluayBJJ2xsIGdpdmUgaXQgYSBz
a2lwIGZvciBub3csIHRoYXQgaXMgCnVubGVzcyB0aGUgZGV2IGFjdHVhbGx5IGZpeGVzIHRoZSB0
aGluZy4KCgpJIGFtIG9uIEZlZG9yYSwgZm9yIG5vdywgYmVjYXVzZSBpdCB3YXMgdGhlIG5lYXJl
c3QgVXNiIHN0aWNrIEkgY291bGQgCmdyYWIgcXVpY2tseS4KCgpJIG1pZ2h0IGp1c3QgZ2l2ZSB0
aGUgdmFuaWxsYSBBcmNoIElTTyBhbm90aGVyIGdvLiBXaHkgbm90PwoKT24gMjAyMS8xMi8xNCAx
MzowNSwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiDCoG9yIE1h
bmphcm8gQXJjaGl0ZWN0Lgo+Cj4gUGVyc29uYWxseS4gSSd2ZSBoYWQgc3VjY2VzcyB3aXRoIHRo
ZSB2YW5pbGxhIEFyY2ggSVNPIGFuZCB0aGUgZ3VpZGVkIAo+IGluc3RhbGxlciAodGhlIGFyY2hp
bnN0YWxsIG9uZSksIEkganVzdCBzZXQgaXQgdG8gYm9vdCB1cCB0YWxraW5nLCAKPiB3ZW50IHRo
cm91Z2ggaXQgYW5kIGFkZGVkIGluIGFsc2EtdXRpbHMvZXNwZWFrdXAgYW5kIHRoZW4gcHV0IAo+
IHNwZWVjaC1kaXNwYXRjaGVyL09yY2Evdm9pY2VzIGFuZCBhIHdpbmRvdyBtYW5hZ2VyIG9uIG9u
Y2UgdGhlIHN5c3RlbSAKPiB3YXMgaW5zdGFsbGVkLgo+Cj4KPiBKZW51eCBoYXMgbmV2ZXIgcmVh
bGx5IHdvcmtlZCBmb3IgbWUgb24gYSBWTSBvciBiYXJlIG1ldGFsIGF0IGFsbCwgCj4gd2hlcmVh
cyB0aGUgb2ZmaWNpYWwgYXJjaCBJU08gaXMgd29ya2luZyByYXRoZXIgd2VsbCwgYW5kIEkgZHVu
bm8gaWYgCj4gdGhlIEFyY2hpdGVjdCBlZGl0aW9uIGlzIDM2LzY0IGJpdCBvciAzMmJpdCBvbmx5
IG9yIDY0Yml0IG9ubHkuIAo+IEFkbWl0dGVkbHksIEkndmUgZ290IGEgNjRiaXQgVUVGSSBzeXN0
ZW0gc28gdGhlIG9mZmljaWFsIElTbyB3b3JrcyAKPiBmbGF3bGVzc2x5IG9uIGl0IGhvd2V2ZXIs
IGJ1dCBZTU1WIG9uIHRoYXQgb25lWWVzLCBidXQgeW91IHByb2JhYmx5IAo+IGRvbid0IHdhbnQg
dG8gaGVhciBpdCBpZiB5b3UgYXJlIHNldCBvbiB1c2luZyBKZW51eCBob3dldmVyLgo+Cj4gT24g
MTIvMTQvMjEgMDk6MTgsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6
Cj4+IEhpIGFsbCwKPj4KPj4gSSBkZWNpZGVkIHRvIGdpdmUgSmVudXggYW5vdGhlciBnbywgbGFz
dCB0aW1lLCBubyBtYXR0ZXIgd2hhdCBJIAo+PiB0cmllZCwgSSBjb3VsZG4ndCBnZXQgb3JjYSB0
byBjb21lIG9uIGFmdGVyIGxvZ2dpbmcgaW4gdG8gdGhlIHN5c3RlbS4KPj4KPj4gRG9lcyBhbnlv
bmUgaGF2ZSBhbnkgYWR2aWNlPwo+Pgo+PiBBbHNvLCBpZiB0aGlzIGRvZXNuJ3Qgd29yayBvdXQs
IGlzIHRoZXJlIGEgZ3VpZGUgZm9yIGRvaW5nIGEgTWFuamFybyAKPj4gYXJjaGl0ZWN0IGluc3Rh
bGw/ICJNYW5qYXJvIFRhbGtpbmciIGdvdCB1cGRhdGVkIGEgbGl0dGxlIHdoaWxlIGFnbywgCj4+
IGFuZCBpZiwgYXMgSSBzYWlkLCBKZW51eCBkb2Vzbid0IHdvcmsgb3V0LCBJJ2QgbGlrZSB0byBn
aXZlIHRoYXQgb25lIAo+PiBhIGdvLgo+Pgo+PiBUaGFua3Mgc28gbG9uZy4KPj4KPj4gV2FybSBy
ZWdhcmRzLAo+Pgo+PiBCcmFuZHQgU3RlZW5rYW1wCj4+Cj4+IFNlbnQgZnJvbSBteSBNYWNCb29r
IEFpcgo+Pgo+PiBDb250YWN0Ogo+Pgo+PiBQaG9uZTogKzI3ICgwKTYwIDUyNSA5MTgxIDx0ZWw6
Ly8rMjc2MDUyNTkxODE+Cj4+Cj4+IEVtYWlsOiBicmFuZHQuc3RlZW5rYW1wQGdtYWlsLmNvbSA8
bWFpbHRvOmJyYW5kdC5zdGVlbmthbXBAZ21haWwuY29tPgo+Pgo+PiBUd2l0dGVyOiBAYnJhbmR0
c3RlZW5rYW1wIDxodHRwOi8vd3d3LnR3aXR0ZXIuY29tL2JyYW5kdHN0ZWVua2FtcD4KPj4KPj4K
Pj4KPj4KPj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
Pj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPj4g
aHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+
Pgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBC
bGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKLS0gCldh
cm0gcmVnYXJkcywKCkJyYW5kdCBTdGVlbmthbXAKClNlbnQgZnJvbSBGZWRvcmEgTGludXggdXNp
bmcgVGh1bmRlcmJpcmQKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

