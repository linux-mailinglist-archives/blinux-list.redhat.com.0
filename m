Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id D1F8434F4B4
	for <lists+blinux-list@lfdr.de>; Wed, 31 Mar 2021 01:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1617145252;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=WltFpgzp+xOk9FQCR4QC9LGh5txZP4R7KZbAZBWRCO0=;
	b=cRRO/Stn8QEDknA4WpDCTMcXwxf4Nks1o/3+mBmcwUr93fo7Yfpf/3F6tLXLm+NXpeiFg0
	vuNWz/3ngOD4PJibnkGWm23C2tv6eDJyjx+vmc0Nhp5CekZKGBe9YZBkCxNAv1D7gAF789
	szehh98KwnhjB49vfD+arJeF+zDgOh8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-432-RDSVV2jRO5usmZdu5vpnAg-1; Tue, 30 Mar 2021 19:00:50 -0400
X-MC-Unique: RDSVV2jRO5usmZdu5vpnAg-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 62B4C8189C8;
	Tue, 30 Mar 2021 23:00:47 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 846D5614FC;
	Tue, 30 Mar 2021 23:00:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 6225A1809C83;
	Tue, 30 Mar 2021 23:00:39 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 12UMtcKE012317 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 30 Mar 2021 18:55:38 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 935CF2026D64; Tue, 30 Mar 2021 22:55:38 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8A35C2026D07
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 22:55:36 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E92E9802317
	for <blinux-list@redhat.com>; Tue, 30 Mar 2021 22:55:35 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
	(Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-467-j9-M2snBNMiCHqsM97t76g-1; Tue, 30 Mar 2021 18:55:33 -0400
X-MC-Unique: j9-M2snBNMiCHqsM97t76g-1
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4F94Y12vPBzYXP;
	Tue, 30 Mar 2021 18:55:33 -0400 (EDT)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4F94Y12gx2zcbc; Tue, 30 Mar 2021 18:55:33 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4F94Y12czLzcbV;
	Tue, 30 Mar 2021 18:55:33 -0400 (EDT)
Date: Tue, 30 Mar 2021 18:55:33 -0400
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: dosemu 1.x is deprecated in favor of dosemu2.x
In-Reply-To: <26dcd457-fb79-3b31-0c7c-5a7872285b27@slint.fr>
Message-ID: <alpine.NEB.2.23.451.2103301854001.12856@panix1.panix.com>
References: <alpine.NEB.2.23.451.2103301720550.8687@panix1.panix.com>
	<26dcd457-fb79-3b31-0c7c-5a7872285b27@slint.fr>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 12UMtcKE012317
X-loop: blinux-list@redhat.com
Cc: slint@freelists.org
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGkgRGlkaWVyLAoKSSBhbG1vc3QgZ290IGRvc2VtdTIgYnVpbHQgaGVyZSBidXQgd2lsbCBoYXZl
IHRvIGdvIHRvIGFyY2ggc2luY2UgCmZsdWlkc3ludGggaXMgdG9vIG91dGRhdGVkIGZvciBkb3Nl
bXUyLgoKCk9uIFdlZCwgMzEgTWFyIDIwMjEsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1
c3Npb24gd3JvdGU6Cgo+IEhpIEp1ZGUsCj4KPiBJJ20gc29ycnksIGJ1aWxkaW5nIGRvc2VtdTIu
eCBpcyBub3Qgc2ltcGxlIGFuZCBJIHdvbid0IGhhdmUgdGhlIHRpbWUKPiB0byBkbyB0aGF0IHNv
b24uCj4KPiBBcyB5b3UgcnVuIHNldmVyYWwgZGlzdHJpYnV0aW9ucywgbWF5YmUgdHJ5IGRvc2Vt
dTIueCBvbiBhbm90aGVyIG9uZT8KPgo+IFBTIEFjY29yZGluZyB0byByZXBvbG9neSBvbmx5IEFy
Y2hzIHByb3ZpZGUgYSBidWlsZCBzY3JpcHQgaW4gdGhlIEFVUjoKPiBodHRwczovL2F1ci5hcmNo
bGludXgub3JnL3BhY2thZ2VzL2Rvc2VtdTItZ2l0Lwo+Cj4gR29vZCBsdWNrLgo+Cj4gQ2hlZXJz
LAo+IERpZGllcgo+IC0tCj4gRGlkaWVyIFNwYWllcgo+IFNsaW50IG1haW50YWluZXIKPgo+IExl
IDMwLzAzLzIwMjEgPyAyMzoyMywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBh
ID9jcml0wqA6Cj4+ICBJIGp1c3QgbGVhcm5lZCB0aGlzIHRvZGF5IGFuZCBzbGludCBuZWVkcyBh
IG1vcmUgdXAtdG8tZGF0ZSBmbHVpZHN5bnRoCj4+ICBwYWNrYWdlIGFuZCBJIGhhdmVuJ3Qgc3Rh
cnRlZCBsb29raW5nIGZvciBzb3VuZCBmb250cyB0aG91Z2ggdGhleSdsbAo+PiAgcHJvYmFibHkg
YmUgb24gc2xhY2t3YXJlIGluIG1haW4gb3Igc2xhY2tidWlsZHMgcmVwb3NpdG9yaWVzLgo+Cj4K
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51
eC1saXN0IG1haWxpbmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL2xp
c3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4KCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWls
aW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNv
bS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

