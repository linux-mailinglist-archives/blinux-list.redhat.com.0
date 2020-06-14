Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id A8F7B1F8AC1
	for <lists+blinux-list@lfdr.de>; Sun, 14 Jun 2020 22:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1592167881;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=rtfaKqh+2rN7vIYGxNemtC13/sPno/KEW4Y+bpKwqYI=;
	b=KzGHHwF7G6rpELAEmHFRNajBTpJAN6afVgLJVGPqqAGhBPrZ2QgUnqdqL2hg/2xC5HY4ml
	DQzlVRellXsppaTkgw4LN8yVjkI/NXT4DEJZV7F34McP5prHtsN1p5ERO+7TTBuLW3Tw5b
	3MeiCK+HTXRRu8mM0JompDwnxyemxGQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-236-WDgIVJSwOT-v07vCvlu3Ow-1; Sun, 14 Jun 2020 16:51:08 -0400
X-MC-Unique: WDgIVJSwOT-v07vCvlu3Ow-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 43081464;
	Sun, 14 Jun 2020 20:51:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AFFDE100164D;
	Sun, 14 Jun 2020 20:51:04 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B029D833AB;
	Sun, 14 Jun 2020 20:51:03 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 05EKowNO003464 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 14 Jun 2020 16:50:59 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id C7F542166BA3; Sun, 14 Jun 2020 20:50:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C34542166BA0
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 20:50:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id C6BD085A5A3
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 20:50:56 +0000 (UTC)
Received: from cfcl.com (cpepool4cmts2-144.sanbrunocable.com
	[24.143.248.144]) by relay.mimecast.com with ESMTP id
	us-mta-426-0i44EqeyOOGM3f4izK2_6w-1; Sun, 14 Jun 2020 16:50:44 -0400
X-MC-Unique: 0i44EqeyOOGM3f4izK2_6w-1
Received: from spot.local (spot.local [IPv6:fe80::187a:b534:6313:c269])
	by cfcl.com (Postfix) with ESMTP id 80FE0FB6B24
	for <blinux-list@redhat.com>; Sun, 14 Jun 2020 13:50:43 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3608.40.2.2.4\))
Subject: Re: Prospects for an accessible and open version of Android?
Date: Sun, 14 Jun 2020 13:50:42 -0700
References: <CABKqQvFWNxksnpwQ0YfytwaYnd1bAkkWB9LjmnJtZWW_1zepyw@mail.gmail.com>
	<498E62FA-D270-418F-91D0-003022B137B5@cfcl.com>
	<DF019091-ECBE-48AC-8B3F-A85FCB13F98F@gmail.com>
	<68F8B348-C5F3-4E40-9731-CB928C1E1786@cfcl.com>
	<3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <3FF9DFF0-EBA2-41FA-AF6D-41A15F7D96B3@gmail.com>
Message-Id: <1E64643A-5D91-45E2-A546-970F7E14EF28@cfcl.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 05EKowNO003464
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

PiBPbiBKdW4gMTQsIDIwMjAsIGF0IDEzOjIzLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNj
dXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiBXaGF0IGlzIGEg4oCY
c2V0dGluZ3MgaXNzdWXigJk/Cj4gQXJlIHlvdSBtZWFuaW5nIGEgcHJvYmxlbSB3aXRoIHNldHRp
bmdzPwoKWWVzLiAgT24gYWxsIG9mIG15IG90aGVyIG1haWxpbmcgbGlzdHMsIHRoZSBpZGVudGl0
eSBvZiB0aGUgc2VuZGVyIGlzIGdpdmVuIGluIHRoZSBGcm9tIGxpbmUuICBJbiBzb21lIGNhc2Vz
LCB0aGUgZW1haWwgYWRkcmVzcyBpcyBvYmZ1c2NhdGVkLCBidXQgSSBzdGlsbCBrbm93IHdobyBz
ZW50IHRoZSBtZXNzYWdlLiAgSW4gdGhpcyBsaXN0LCBhbGwgb2YgdGhlIEZyb20gbGluZXMgc2F5
ICJPbiAuLi4sIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0
QHJlZGhhdC5jb20+IHdyb3RlOiIuICBJIGZpbmQgdGhpcyBjb25mdXNpbmcsIGJlY2F1c2UgSSBj
YW4ndCB0ZWxsIHdobydzIHNheWluZyB3aGF0ICh1bmxlc3MgdGhleSBoYXBwZW4gdG8gZW5kIHRo
ZWlyIHBvc3Qgd2l0aCBhIHNpZ25hdHVyZSkuCgpJZiB0aGlzIG1haWxpbmcgbGlzdCBiZWhhdmlv
ciBpcyBpbnRlbnRpb25hbCwgcGxlYXNlIGxldCBtZSBrbm93IGFuZCBJJ2xsIGxpdmUgd2l0aCBp
dC4gIElmIGl0IGlzbid0LCBwZXJoYXBzIHRoZSBzZXR0aW5ncyBvbiB0aGUgbWFpbGluZyBsaXN0
IG5lZWQgdG8gYmUgbW9kaWZpZWQuCgotcgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgt
bGlzdA==

