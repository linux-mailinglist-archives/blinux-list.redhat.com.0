Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E53465A98
	for <lists+blinux-list@lfdr.de>; Thu,  2 Dec 2021 01:20:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638404431;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=L5df4Eu98vdB21KnGdvsl+Yf7sEUQ2oH/DVwlFuOVWg=;
	b=QXGcHE49kyd0OgYm8huUbHcv1NbozH9asiNSVXn7h5SvgLiJhdhFaAGrrlIszZh67vXuz/
	3JsAg36Mq0WJUYTbJ4MTqdF4IfAVohq05C09s+YrOiVHeZFkB9xoAk87Fy3o+1AnHIZXlC
	e+vgx2mI/UgMuaoGwfoo8N6cHidPmtc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-420-w1kGMKmAPrO1SU7LpT26qg-1; Wed, 01 Dec 2021 19:20:27 -0500
X-MC-Unique: w1kGMKmAPrO1SU7LpT26qg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com [10.5.11.14])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0F816102CC42;
	Thu,  2 Dec 2021 00:20:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1CF1B5DAA5;
	Thu,  2 Dec 2021 00:20:21 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 4C75B4CA93;
	Thu,  2 Dec 2021 00:20:15 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B20GCTg020892 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 1 Dec 2021 19:16:12 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 8C78F1121319; Thu,  2 Dec 2021 00:16:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 868461121315
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 00:16:09 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BE580185A79C
	for <blinux-list@redhat.com>; Thu,  2 Dec 2021 00:16:09 +0000 (UTC)
Received: from darkstar.slint.fr (darkstar.slint.fr [172.105.89.79]) by
	relay.mimecast.com with ESMTP id us-mta-262-XmWPULQ2M3OxAu2hpwhmSw-1;
	Wed, 01 Dec 2021 19:16:07 -0500
X-MC-Unique: XmWPULQ2M3OxAu2hpwhmSw-1
Received: from [192.168.1.37] (men75-h08-176-172-247-100.dsl.sta.abo.bbox.fr
	[176.172.247.100])
	by darkstar.slint.fr (Postfix) with ESMTPSA id 8EDDDA3ED8
	for <blinux-list@redhat.com>; Wed,  1 Dec 2021 23:15:24 +0100 (CET)
Message-ID: <61b43551-c714-34e5-cc0b-3eee7eac5913@slint.fr>
Date: Thu, 2 Dec 2021 02:16:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
	Thunderbird/91.3.1
Subject: Re: Is it easy to install Voxin voices on Slint?
To: blinux-list@redhat.com
References: <409d4ea5-c08f-9975-adcc-5d7bafc6ba44@gmail.com>
In-Reply-To: <409d4ea5-c08f-9975-adcc-5d7bafc6ba44@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Bulk-Signature: yes
X-Mimecast-Spam-Signature: bulk
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 1B20GCTg020892
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgSWJyYWhpbSwKCnNob3J0IGFuc3dlcjogeWVzLgoKSnVzdCBmb2xsb3cgdGhlIGluc3RydWN0
aW9ucyB1bmRlciBJbnN0YWxsYXRpb24gaGVyZToKaHR0cHM6Ly9vcmFsdXgub3JnL2luZGV4LnBo
cD9teWxhbmc9ZW4KCkFuZCB5ZXMgSSB0aGluayB0aGF0IEdpbGxlcyBDYXNzZSBzZW5kIGluc3Ry
dWN0aW9ucywgaW4gYW55IGNhc2UKaGUgcHJvdmlkZXMgc3VwcG9ydDogY29udGFjdEBvcmFsdXgu
Y29tCkZlZWwgZnJlZSB0byBlbWFpbCBoaW0gaW4gRnJlbmNoIDspCgphYm91dCB0aGUgdm94aW4g
dm9pY2VzLCB5b3UgY291bGQgYXNrIGluIHRoZSBTbGludCBtYWlsaW5nIGxpc3QsIEkganVzdCBo
YXZlCm9uZSB2b2ljZSBmb3IgdGVzdGluZyBidXQgc2V2ZXJhbCBwZW9wbGUgdGhlcmUgdXNlIFZv
eGluIHZvaWNlcwoKQXMgYSByZW1pbmRlcjoKVGhlIFNsaW50IG1haWxpbmcgbGlzdC4KQXJjaGl2
ZTogaHR0cHM6Ly93d3cuZnJlZWxpc3RzLm9yZy9hcmNoaXZlL3NsaW50ClRvIHN1YnNjcmliZSBv
ciB1bnN1YnNjcmliZSwgZW1haWwgc2xpbnQtcmVxdWVzdEBmcmVlbGlzdHMub3JnIHdpdGggdGhl
IApzdWJqZWN0CidzdWJzY3JpYmUnIG9yICd1bnN1YnNjcmliZScsIHRoZW4gYW5zd2VyIHRoZSBl
bWFpbCB5b3Ugd2lsbCByZWNlaXZlLgpNb3JlOiBlbWFpbCBzbGludC1yZXF1ZXN0QGZyZWVsaXN0
cy5vcmcgd2l0aCBhcyBzdWJqZWN0ICdoZWxwJyBvciAKJ2NvbW1hbmRzJy4KCkNoZWVycywKRGlk
aWVyCgoKTGUgMDEvMTIvMjAyMSDDoCAwNDozNiwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiBhIMOpY3JpdMKgOgo+IEhpIEZyaWVuZHMsCj4gCj4gSG93IGVhc3kgaXMgaXQgZm9y
IGEgTGludXggYmVnaW5uZXIgdG8gaW5zdGFsbCBhbmQgY3VzdG9taXplIHRoZSBWb3hpbiAKPiB2
b2ljZXMgZnJvbSBPcmFsdXgub3JnIHRvIHdvcmsgc21vb3RobHkgd2l0aCBvcmNhPyBJIGFtIHRl
bXB0ZWQgdG8gYnV5IAo+IHR3byBvZiB0aGVtLCBidXQgSSBhbSBhZnJhaWQgdG8gZmluZCB0aGUg
aW5zdGFsbGF0aW9uIHRvIGJlIHRvbyAKPiBjb21wbGljYXRlZC4gSSBjb3VsZCBub3Qgc2VlIGFu
eSBpbnN0YWxsYXRpb24gaW5zdHJ1Y3Rpb25zIG9uIHRoZWlyIAo+IHdlYnNpdGUuIEkgYXNzdW1l
IHRoZXkgd291bGQgc2VuZCBpbnN0cnVjdGlvbnMgaW4gYW4gZW1haWwgYWZ0ZXIgcHVyY2hhc2Uu
Cj4gCj4gSXMgdGhlIFZveGluIGFkZG9uIHZlcnkgc3RhYmxlPyBJIGNvdWxkIG5vdCByZWFsbHkg
anVkZ2UgdGhlIHF1YWxpdHkgCj4gYmVjYXVzZSB0aGUgc2FtcGxlcyB0aGV5IGdpdmUgYXJlIHVs
dHJhIGV4dHJlbWVseSBzaG9ydCwgbGVzcyB0aGFuIHNpeCAKPiBzZWNvbmRzLiBFYWNoIHZvaWNl
IGp1c3Qgc2F5cyBpdHMgbmFtZS4gVGhpcyBpcyBub3QgZW5vdWdoIHRvIGp1ZGdlIGhvdyAKPiBp
dCB3b3VsZCBiZSBpbiByZWFkaW5nIHBhZ2VzIG9yIGV2ZW4gYm9va3MuCj4gCj4gQW55d2F5LCBJ
ZiBhbnkgb2YgeW91IGhhZCB0cmllZCB0aGUgVm94aW4gdm9pY2VzLCBwbGVhc2UgbGV0IG1lIGtu
b3cgCj4gYWJvdXQgdGhlIGRpZmZpY3VsdGllcyBJIG1heSBlbmNvdW50ZXIgaWYgSSB0cnkgdG8g
aW5zdGFsbCB0aGVtLCBhbmQgYW55IAo+IG90aGVyIGNvbW1lbnRzLgo+IAo+IENoZWVycywKPiAK
PiBJYnJhaGltCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6
Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

