Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9159E6B6392
	for <lists+blinux-list@lfdr.de>; Sun, 12 Mar 2023 07:56:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1678604167;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=PpVwqybgwvJoHZKRhxlP90mn2OwyIOv4nJoiWWsZuGI=;
	b=WDlzMAvQV2HpRAkKu3FMuAjz5SdO33EZ3utQf9vCdX0P6UuCJXJdrRugGa2E0FnORKVXwa
	kNdcSUwtAH35J1x3O9PALl2q/QNuzgTtQ0qQXagmiKrjaLfr8mTKVVgGvnmTlxpFYDUBD0
	wwkgUivsZ+U84nta7/NFkcnQzEGw+T0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-645-V0U5Szs_N2asUtY9pVkGvw-1; Sun, 12 Mar 2023 01:56:03 -0500
X-MC-Unique: V0U5Szs_N2asUtY9pVkGvw-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5B9543810787;
	Sun, 12 Mar 2023 06:56:01 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (unknown [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 9FD7F140EBF6;
	Sun, 12 Mar 2023 06:55:57 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C0E591946A48;
	Sun, 12 Mar 2023 06:55:56 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Date: Sun, 12 Mar 2023 06:55:33 +0000
To: blinux-list@redhat.com
Subject: Re: has anyone got emmaubuntus talking?
In-Reply-To: <mailman.398.1678577483.3486290.blinux-list@redhat.com>
References: <mailman.398.1678577483.3486290.blinux-list@redhat.com>
Feedback-ID: 26663242:user:proton
MIME-Version: 1.0
Message-ID: <mailman.450.1678604156.3486283.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 3.1 on 10.11.54.7
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGVsbG8sCgphcmUgeW91IHJlYWxseSBzdXJlIGl0J3MgbmVjZXNzYXJ5IHRvIHVzZSBhIHNwZWNp
YWxpemVkIExpbnV4CmRpc3RyaWJ1dGlvbiBqdXN0IGJlY2F1c2Ugb2YgdGhlIGNvbXB1dGVyJ3Mg
YWdlPwoKSSBtZWFuLCBMaW51eCBpcyBwcmV0dHkgbGlnaHR3ZWlnaHQgZXZlbiBvbiB0aGUgZmxh
Z3NoaXAgZGlzdHJvcywgaW4KbW9zdCBjYXNlcywgeW91J3JlIGNvbXBsZXRlbHkgZmluZSB3aXRo
IHRoZW0gYW5kIGNhbiBiZW5lZml0IGZyb20gdGhlaXIKYWNjZXNzaWJpbGl0eSBzdXBwb3J0LgoK
SSd2ZSByZWNlbnRseSBpbnN0YWxsZWQgVWJ1bnR1IE1hdGUgMjIuMDQgNjQtYml0IG9uIG15IGNj
YS4gMTUgeWVhcnMgb2xkCmxhcHRvcCwgYW5kIEkgd2FzIHZlcnkgcGxlYXNlZCB3aXRoIHRoZSBl
eHBlcmllbmNlLgoKSW5kZWVkLCBpdCB3YXMgbm90IGFzIGxpZ2h0bmluZyBhcyBteSBjdXJyZW50
LW9uZSwgdGhvdWdoIGhvbmVzdGx5LCBJCmhhZCBhIGZlZWxpbmcgbW9zdCBvZiB0aGUgZGVsYXkg
Y2FtZSBhY3R1YWxseSBmcm9tIHRoZSBwaHlzaWNhbAprZXlib2FyZCwgd2hpY2ggaXMgdmVyeSBz
dHVyZHkgY29tcGFyZWQgdG8gdG9kYXkncyBzdGFuZGFyZHMsIGFuZCB0YWtlcwpxdWl0ZSBhbiBl
ZmZvcnQgdG8gdHlwZSBvbi4KCkJ1dCBldmVuIHdpdGggdGhpcyBzbG93ZG93biwgdGhlIGV4cGVy
aWVuY2Ugd2FzIHN0aWxsIHF1aXRlIGZsdWVudC4KCgpCZXN0IHJlZ2FyZHMKCgpSYXN0aXNsYXYK
CgpExYhhIDEyLiAzLiAyMDIzIG8gMDozMSBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNz
aW9uIG5hcMOtc2FsKGEpOgo+IEkgZG93bmxvYWRlZCB0aGUgbGF0ZXN0IHJlbGVhc2UuICBJdCBo
YXMgZXNwZWFrLW5nIG9uIGl0IGJ1dCBkb2Vzbid0IGhhdmUKPiBvcmNhLiAgSSBjb3VsZG4ndCBm
aWd1cmUgb3V0IGhvdyB0byBnZXQgZXNwZWFrdXAtbmcgdG8gY29tZSB1cCBvbiBib290IHNvCj4g
SSdkIGhhdmUgYSB0YWxraW5nIGluc3RhbGwgYXQgbGVhc3QuCj4gRm9yIHRob3NlIHRoYXQgZG9u
J3QgeWV0IGtub3cgZW1tYXVidW50dXMgaXMgYSBkaXN0cmlidXRpb24gYWltZWQgYXQKPiB1bmRl
ci1wb3dlcmVkIGFuZCByZWZ1cmJpc2hlZCBtYWNoaW5lcyBzdHVmZiB0aGF0IHdvdWxkIG90aGVy
d2lzZSBlbmQgdXAKPiBpbiB0aGUgbGFuZCBmaWxscy4gIEl0J3MgZm9yIGJlZ2lubmVycyB0byBs
aW51eCBhbmQgdGhlIG9ubHkgcmVhc29uIEknbQo+IGRvaW5nIGFueXRoaW5nIHdpdGggaXQgYXQg
YWxsIGlzIHRvIHBvc3NpYmx5IGhlbHAgYSByZW1vdGUgc2lnaHRlZCBwZXJzb24KPiBtaWdyYXRl
IG9uZSBvciBtb3JlIG9sZCB3aW5kb3dzIG1hY2hpbmVzIHRvIHRoaXMgdmVyc2lvbiBvZiBsaW51
eCBhbmQgc2hlCj4gaGFzbid0IHVzZWQgbGludXggeWV0LiAgSXQgb2ZmZXJzIHhmY2UgYW5kIGx4
cXQgYXMgZGVza3RvcHMuICBJZiBvcmNhCj4gaXNuJ3QgaW4gdGhlIHJlcG9zaXRvcnkgYmVpbmcg
dXNlZCBpdCBvdWdodCB0byBnZXQgaW4gdGhlIHJlcG9zaXRvcnkgc28KPiB0aGUgZGVza3RvcHMg
Z2V0IGFjY2Vzc2libGUgZm9yIHNjcmVlbiByZWFkZXIgdXNlcnMuCj4KPgo+Cj4gSnVkZSA8amRh
c2hpZWwgYXQgcGFuaXggZG90IGNvbT4gIlRoZXJlIGFyZSBmb3VyIGJveGVzIHRvIGJlIHVzZWQg
aW4KPiBkZWZlbnNlIG9mIGxpYmVydHk6Cj4gICBzb2FwLCBiYWxsb3QsIGp1cnksIGFuZCBhbW1v
LiBQbGVhc2UgdXNlIGluIHRoYXQgb3JkZXIuIgo+IC1FZCBIb3dkZXJzaGVsdCAoQXV0aG9yLCAx
OTQwKQo+Cj4gLgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29t
Cj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlz
dAo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3Rt
YW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cg==

