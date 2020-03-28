Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id AEFE319673A
	for <lists+blinux-list@lfdr.de>; Sat, 28 Mar 2020 17:05:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585411531;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=OGdrZ/64Wtxrb/r6A+DSMI1HPZuVBE+K2DIVv2z4l/E=;
	b=hyCWYOf/yE7GV50QZfnmVxzTF4GNjs8nrU52cr/R0mEcWmkV/bq1ecJgXPrj6xTJ150yYG
	pXpZ9lJDIMPyph8bVjL52VvV2aohjmLi5pZDNsVKxrQe84ynCg9jCgmMzUgdU2n7a6mAEb
	2g5XPu4pNr4W1BYUJiRatOkfRoogOPE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-471-MwFkqGm_PZGD2cdPOaB5eA-1; Sat, 28 Mar 2020 12:05:29 -0400
X-MC-Unique: MwFkqGm_PZGD2cdPOaB5eA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BB117189F760;
	Sat, 28 Mar 2020 16:05:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 31CC11001925;
	Sat, 28 Mar 2020 16:05:18 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3201D1809567;
	Sat, 28 Mar 2020 16:05:06 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02SG4w9l012072 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 28 Mar 2020 12:04:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2DB372022EA7; Sat, 28 Mar 2020 16:04:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 292782093CC4
	for <blinux-list@redhat.com>; Sat, 28 Mar 2020 16:04:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0497B101A55D
	for <blinux-list@redhat.com>; Sat, 28 Mar 2020 16:04:56 +0000 (UTC)
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-305-o29IsbvSNy-SJXHRLutpRQ-1; Sat, 28 Mar 2020 12:04:53 -0400
X-MC-Unique: o29IsbvSNy-SJXHRLutpRQ-1
Received: by mail-io1-f45.google.com with SMTP id k9so13100070iov.7
	for <blinux-list@redhat.com>; Sat, 28 Mar 2020 09:04:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=EvFl5PXtcLS7TBc5U9uC8Z3MunBe1SLiXXr7Cl+aFi0=;
	b=dlLT4l4n6lnrzbjnILaLengIV0O+gCv1oIC0FoZ9Ncc25pSTlz2ZtB29jNDv5UAFZR
	EzVxt6J+IZG5k51aX4bpvEz9Ttym1xSBs6L81evM2VHjCKCFi/HhhjRDnbJ/FoznhB68
	ZK62Axhb+YrWIvSvEiCeCQzB8k6Rzb2qEhpT2H+PDrDrhWI92e/1Jbq2xVh+/Xxv+/D4
	qoUkShOd42/THHXxUQFg+HvlXL4+5vx88QzcoMqEesRXEXSet94ug32pS9EYy5VmJaGC
	g9RbpFWVjJiUWaEdkehsCgzY4+3Kblv8D46dSlWGGH+i3QXTR7ZrTl3AjQJPa1YHIFvn
	b1uA==
X-Gm-Message-State: ANhLgQ1VBihIityVbQ76K6QU7bqmW6lk4vtndL9oBCebnnlEP/elfuGf
	VAmLLlIYMUC+A9QnfOGHThcPiQiSg3OeF4aoZt4OOQ==
X-Google-Smtp-Source: ADFU+vuhLXGIaMFif6BeTya4baWh4YhnIkfQqG9N3akACHtc5OL6rbZgC7wBvu8nBwbQ8htjYrDKi2bceqqtVd72QUo=
X-Received: by 2002:a5d:89d1:: with SMTP id a17mr3542661iot.11.1585411492942; 
	Sat, 28 Mar 2020 09:04:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a05:6602:168a:0:0:0:0 with HTTP; Sat, 28 Mar 2020 09:04:52
	-0700 (PDT)
In-Reply-To: <B0D71794-95D6-435A-84FE-71D2D3D8575C@gmail.com>
References: <B0D71794-95D6-435A-84FE-71D2D3D8575C@gmail.com>
Date: Sat, 28 Mar 2020 12:04:52 -0400
Message-ID: <CAK2wa2=wyf79Mwb00YFGsaA4zWUG_oSk=pfoWME=QNcNzaO4Zw@mail.gmail.com>
Subject: Re: Newbee Linux user introduction
To: blinux-list@redhat.com
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02SG4w9l012072
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

ZnJpZW5kLAppbnN0YWxsIGFjY2Vzc2libGUtY29jb251dCBhbiBhY2Nlc3NpYmxlIGRpc3RyaWJ1
dGlvbiBmcm9tCnNvdXJjZWZvcmdlLm5ldCB3aGljaCB3aWxsIGhlbHAgeW91IGZvciBkaWZmZXJl
bnQgdXNlcy5JZiB5b3UgYXJlCmludGVyZXN0ZWQgY29udGFjdCBzYXRoLmxpbnV4QGdtYWlsLmNv
bQoKT24gMy8yNy8yMCwgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4
LWxpc3RAcmVkaGF0LmNvbT4gd3JvdGU6Cj4gSGVsbG8sCj4KPiBNeSBuYW1lIGlzIFNpbW9uIGFu
ZCBJIGFtIGZyb20gVUsuCj4KPiBJIGhhdmUgYmVlbiBhIFdpbmRvd3MgYW5kIGZvciAxMyB5ZWFy
cyBhIG1hYyB1c2VyLiAgSSBoYXZlIG5vIHRyYWluaW5nIGluCj4gY29tcHV0ZXIgcHJvZ3JhbW1p
bmcuICBXaGF0ZXZlciBJIGRvIGtub3cgLCBJIGhhdmUgbGVhcm50IGFzIEkgd2VudCBhbG9uZy4K
PiBJIHdvdWxkIGxpa2UgdG8gZ2l2ZSBMaW51eCBhIGdvLCBoYXZpbmcgZmFpbGVkIGEgZmV3IHll
YXJzIGFnby4gIEJ1dCBJ4oCZbQo+IHF1aXRlIGRldGVybWluZWQgdG8gbGVhcm4uICBJIGhhdmUg
anVzdCBqb2luZWQgdGhpcyBncm91cCwgYW5kIEkgd291bGQgbGlrZQo+IHRvIGFzayB5b3UgdG8g
YmUgcGF0aWVudCB3aXRoIG1lIGFzIEkgbWF5IGJlIHRhbGtpbmcgbm9uc2Vuc2Ugb3IgYXNraW5n
IHZlcnkKPiBiYXNpYyBxdWVzdGlvbnMuICBUaGUgd29ybGQgb2YgTGludXggaXMgdmVyeSBuZXcg
dG8gbWUgYW5kIEkgYW0gc3RpbGwgdmVyeQo+IG11Y2ggbGVhcm5pbmcgdGhlIGNvbmNlcHRzIGFu
ZCB0ZXJtcyBvdGhlciBleHBlcmllbmNlZCB1c2VycyB0YWtlIGZvcgo+IGdyYW50ZWQuCj4KPiBJ
ZiB5b3UgaGFkIGFueSBzdWdnZXN0aW9ucyBvciBwb2ludGVycyB0byBhbnkgbWF0ZXJpYWxzIEkg
bWlnaHQgdXNlIHRvCj4gc3RhcnQsIHBsZWFzZSBoZWxwLiAgSSB1bmRlcnN0YW5kIGZyb20gbXkg
cmVzZWFyY2ggb24gdGhlIHN1YmplY3Qgb2YgTGludXgKPiBhY2Nlc3NpYmlsaXR5IHRoYXQgQ0xJ
IGlzIHRoZSB3YXkgdG8gZ28uICBJIGhhdmUgbm8gc2lnaHQgYW5kIEkgdXNlIHNwZWVjaAo+IGFz
IHdlbGwgYXMgQnJhaWxsZS4gIEkgaGF2ZSBqdXN0IG1hbmFnZWQgdG8gaW5zdGFsbCBEZWJpYW4g
MTAuMyBkaXN0cm8gb24gYW4KPiBvbGQgbGFwdG9wIERlbGwgaW5zcGlyb24gNjQwLCBoYXZlIHN1
Y2Nlc3NmdWxseSBhY3RpdmF0ZWQgT3JjYSBkdXJpbmcgdGhlCj4gaW5zdGFsbGF0aW9uIGFuZCBj
b21wbGV0ZWQgaXQuICBJIGNhbuKAmXQgeWV0IGRldGVybWluZSB3aGV0aGVyIEnigJltIHVzaW5n
Cj4gZ25vbWUgZGVza3RvcCBvciBNYXRlLCBhbmQgaWYgR25vbWUsIHdoZXRoZXIgaXQgd291bGQg
YmUgZWFzaWVyIGZvciBtZSB0bwo+IHVzZSBNYXRlICwgYW5kIGlmIHRoZSBsYXR0ZXIgaXMgdHJ1
ZSwgaG93IEkgd291bGQgaW5zdGFsbCBvciBjaG9vc2UgTWF0ZSBpZgo+IGl04oCZcyBhbHJlYWR5
IGluc3RhbGxlZC4gIEnigJltIG5vdCBxdWl0ZSBzdXJlIHlldCBlaXRoZXIgZXhhY3RseSB3aGF0
IHRoZQo+IGRpZmZlcmVuY2UgYmV0d2VlbiB0aGUgdHdvIGlzLiAgSSByZWFsaXplIG15IERlbGwg
aXMgMTMgeWVhcnMgb2xkLCBhbmQgSQo+IHdpbGwgd2FudCB0byBwdXJjaGFzZSBhIG11Y2ggbmV3
ZXIgc2Vjb25kIGhhbmQgbGFwdG9wIGFzIHNvb24gYXMgSeKAmXZlIHNhdmVkCj4gZm9yIGl0LiAg
VGhpcyBtaWdodCBlbmFibGUgbWUgdG8gaW5zdGFsbCBzb21ldGhpbmcgZGlmZmVyZW50LiAgQSBm
cmllbmRseQo+IHBlcnNvbiBvbiBhbm90aGVyIGxpc3Qgc3VnZ2VzdGVkIHRhcmNoLiAgSSBhbSBi
ZWdpbm5pbmcgdG8gcmVzZWFyY2ggVGFyY2gKPiBhbmQgd2FudCB0byBiZSByZWFkeSB0byB1c2Ug
aXQgc28gaWYgdGhlcmUgYXJlIGFueSBkb2N1bWVudHMgdGhhdCB3b3VsZCBoZWxwCj4gbWUgdW5k
ZXJzdGFuZCBob3cgVGFyY2ggd29ya3MgYWZ0ZXIgdGhlIGluc3RhbGxhdGlvbiwgYW5kIHdoZXRo
ZXIgSSBjYW4KPiBpbnN0YWxsIGl0IHdpdGhvdXQgc2lnaHQsIHBsZWFzZSBzYXkuCj4KPiBUaGFu
ayB5b3UgZm9yIGxpc3RlbmluZy4KPgo+IFNpbW9uCj4KPgo+IF9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9s
aXN0aW5mby9ibGludXgtbGlzdAoKCi0tIAoqTW9iIDogKzkxOTQ0NjAxMjIxNQpGUkVFIFNPRlRX
QVJFIEZSRUUgU09DSUVUWSAqCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5j
b20KaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

