Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 15DBB49008A
	for <lists+blinux-list@lfdr.de>; Mon, 17 Jan 2022 04:32:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642390328;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=oFcxhMWmZtJCgxwxfy4CVOUA3pta7bfl14a/StIXr1s=;
	b=T5P7Z4OwaosBrHtBNcYOQ1ZrKDwbQ4VeJLwMdwHweUMiw5RhTK+XQgPs4WcsyePn7DLo/u
	k8DmIN+N0cGcCSxUY3O9Rl9Yac/SWeZ7LFBWWFLXQCPaFMv8F3UNteVRWFlcPWLGrdmF0l
	rFynKMthKiMGcG+owZnxPB9LTKf3mJo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-260-OSnNHVwlOdi9wOvumasRxA-1; Sun, 16 Jan 2022 22:32:04 -0500
X-MC-Unique: OSnNHVwlOdi9wOvumasRxA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30CAD814249;
	Mon, 17 Jan 2022 03:32:01 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 155F34698F;
	Mon, 17 Jan 2022 03:32:01 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DC5111809CB8;
	Mon, 17 Jan 2022 03:32:00 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20H3VvPo010101 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 22:31:57 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id B6668C080AA; Mon, 17 Jan 2022 03:31:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B218CC080A9
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:31:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 97AE31044563
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:31:57 +0000 (UTC)
Received: from st43p00im-ztfb10073301.me.com (st43p00im-ztfb10073301.me.com
	[17.58.63.186]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-433-ajz5vk2PM8WMHon7P61nfQ-1; Sun, 16 Jan 2022 22:31:56 -0500
X-MC-Unique: ajz5vk2PM8WMHon7P61nfQ-1
Received: from smtpclient.apple (c-73-237-149-120.hsd1.ga.comcast.net
	[73.237.149.120])
	by st43p00im-ztfb10073301.me.com (Postfix) with ESMTPS id 1FB668006E0
	for <blinux-list@redhat.com>; Mon, 17 Jan 2022 03:31:55 +0000 (UTC)
Mime-Version: 1.0 (1.0)
Subject: Re: looking for accessible music library app
Date: Sun, 16 Jan 2022 22:31:53 -0500
Message-Id: <84DAA8A1-78CE-47C4-A4B5-F717D2DD25DB@icloud.com>
References: <84661398-808d-f74c-92a5-6c09203f9480@gmail.com>
In-Reply-To: <84661398-808d-f74c-92a5-6c09203f9480@gmail.com>
To: blinux-list@redhat.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.425, 18.0.816
	definitions=2022-01-17_01:2022-01-14,
	2022-01-17 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
	malwarescore=0
	phishscore=0 bulkscore=0 spamscore=0 clxscore=1015 mlxscore=0
	mlxlogscore=719 adultscore=0 classifier=spam adjust=0 reason=mlx
	scancount=1 engine=8.0.1-2009150000 definitions=main-2201170023
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20H3VvPo010101
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

aSBXb3VsZCBsaWtlIHRvIG9yZ2FuaXplIGJ5IGFydGlzdCBhbmQgIGFsYnVtcyAgYW5kIGNyZWF0
ZSBwbGF5bGlzdOKApgoKU2VudCBmcm9tIG15IGlQaG9uZQoKPiBPbiBKYW4gMTYsIDIwMjIsIGF0
IDEwOjI3IFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlz
dEByZWRoYXQuY29tPiB3cm90ZToKPiAKPiDvu79XaGF0IGRvIHlvdSBtZWFuIHdoZW4geW91IHNh
eSAibGlrZSBpVHVuZXM/IiBBbHRob3VnaCBJIGtub3cgc29tZSBvZiB3aGF0IGl0IGlzIHN1cHBv
c2VkIHRvIGJlIGFibGUgdG8gZG8sIEkgbmV2ZXIgdXNlZCBpdCwgc28gSSdtIG5vdCBzdXJlIHdo
YXQgZnVuY3Rpb25hbGl0eSB5b3UgbmVlZC4gQXJlIHlvdSB0cnlpbmcgdG8gZG93bmxvYWQgbXVz
aWMsIHRvIG9yZ2FuaXplIGl0IG9yIHRvIHBsYXkgaXQ/IFRoZSBiZXN0IHBsYWNlIHRvIGJ1eSBk
b3dubG9hZGFibGUgbXVzaWMgbm93IGlzIHByb2JhYmx5IEFtYXpvbiwgYXMgdW5sZXNzIEknbSBt
aXNzaW5nIGEgc2l0ZSB3aGVyZSBJIGNhbiBidXkgZmxhYyBvciB3YXYgZmlsZXMgZnJvbSBteSBm
YXZvcml0ZSBhcnRpc3RzLCBBbWF6b24gaGFzIHRoZSBiZXN0IHNlbGVjdGlvbiBvZiBtcDMgZmls
ZXMgYXZhaWxhYmxlIGZvciBwdXJjaGFzZS4gQXMgZm9yIG9yZ2FuaXppbmcgbXVzaWMsIEkgaGF2
ZSBzZWVuIG1hbnkgbGlicmFyeSBzdHlsZSBkYXRhYmFzZXMgaW50ZWdyYXRlZCBpbnRvIGFsbCBr
aW5kcyBvZiBwbGF5ZXIgc29mdHdhcmUgdGhhdCBjb21lcyBhbmQgZ29lcywgYnV0IG5vdGhpbmcg
YmVhdHMgdGhlIGdvb2Qgb2xkIGZpbGVzeXN0ZW0uIEZpbGVzIGFyZSB1c3VhbGx5IGFscmVhZHkg
bmFtZWQgYWNjb3JkaW5nIHRvIGVpdGhlciBBcnRpc3QgLSBUaXRsZSwgVHJhY2sjIC0gQXJ0aXN0
IC0gVGl0bGUgb3IgVHJhY2sjIC0gdGl0bGUsIGFuZCB0aG9zZSBmaWxlcyBhcmUgZWl0aGVyIHN0
b3JlZCBpbnNpZGUgdGhlIG1haW4gbXVzaWMgZm9sZGVyIG9yIGluIGEgZm9sZGVyIG5hbWVkIGFz
IEFydGlzdCAtIEFsYnVtLCBvciBhdCBsZWFzdCB0aGlzIGlzIHdoYXQgd29ya3MgYmVzdCBmb3Ig
bWUuIFNwZWNpZmljYWxseSwgaWYgSSBoYXZlIGEgZnVsbCBhbGJ1bSwgSSBzdG9yZSB0aGUgc29u
Z3MgaW4gQXJ0aXN0IC0gQWxidW0vVHJhY2sjIC0gVGl0bGUgZm9ybWF0LiBJZiBJIGRvbid0IGhh
dmUgYSBmdWxsIGFsYnVtLCBzYXkgSSBoYXZlIGp1c3QgMyBzb25ncyBieSBhbiBhcnRpc3QsIG1v
c3Qgb2YgdGhlIHRpbWUgZnJvbSBkaWZmZXJlbnQgYWxidW1zLCBJIGp1c3Qgc3RvcmUgdGhlbSBh
cyBBcnRpc3QgLSBUaXRsZSBpbiBteSBNdXNpYyBmb2xkZXIsIHdoaWNoIGluY2lkZW50YWxseSBp
cyBhZGRlZCB0byBteSBob21lIGZvbGRlciBhdXRvbWF0aWNhbGx5IGJ5IHhkZy1kaXJzIEkgYmVs
aWV2ZSBpdCdzIGNhbGxlZCwgd2hpY2ggaXMgYSB0b29sIGludGVncmF0ZWQgaW50byBtb3N0IGRl
c2t0b3BzIHRoYXQganVzdCBraW5kYSBzZXRzIHVwIHRoZSBob21lIGZvbGRlciB3aXRoIHNvbWUg
cmVhc29uYWJseSBsb2dpY2FsIGxvY2F0aW9ucyBmb3IgdGhpbmdzLiBNYW55IG11c2ljIHBsYXll
cnMgZXhpc3QsIGJ1dCBJIHRlbmQgdG8gbG9vayBmb3IgbXByaXMtY29tcGF0aWJsZSBwbGF5ZXJz
LCBhcyBJIGhhdmUgc2V0IHVwIHNob3J0Y3V0IGtleXMgdGhhdCBjYWxsIHBsYXllcmN0bCB0byBw
ZXJmb3JtIHZhcmlvdXMgZnVuY3Rpb25zLiBTb21lIG9mIHRoZSBiZXN0IG11c2ljIHBsYXllcnMg
aW5jbHVkZSBBdWRhY2lvdXMsIHdoaWNoIHVzZWQgdG8gaGF2ZSBpdHMgb3duIGhvdGtleSBzaG9y
dGN1dCBmdW5jdGlvbmFsaXR5IGJ1dCBzZWVtcyB0byBsYWNrIHRoZSBmZWF0dXJlIGluIGEgc2Ny
ZWVuIHJlYWRlciBhY2Nlc3NpYmxlIHdheSBub3csIENsZW1lbnRpbmUsIHdoaWNoIGRvZXMgaGF2
ZSBzaG9ydGN1dCBrZXkgZnVuY3Rpb25hbGl0eSBhbmQgY2FuIG1pbmltaXplIHRvIHRoZSBub3Rp
ZmljYXRpb24gdHJheSwgU3RyYXdiZXJyeSwgd2hpY2ggaXMgYSBmb3JrIG9mIENsZW1lbnRpbmUs
IGJ1dCBoYXMgc29tZSBhZGRpdGlvbmFsIHByZWZlcmVuY2Ugb3B0aW9ucywgRGVhZGJlZWYsIHdo
aWNoIGlzIHNvbWV3aGF0IGxpa2UgQXVkYWNpb3VzIGluIGl0cyBmdW5jdGlvbmFsaXR5LCBhbmQg
dGhlbiB0aGVyZSdzIGdvb2Qgb2xkIHZsYywgd2hpY2ggaGFzIGl0cyBpc3N1ZXMgcGxheWluZyBm
aWxlcyBnYXBsZXNzbHksIGJ1dCBwbGF5cyBhdWRpbyBhbmQgdmlkZW8gZmlsZXMgaW4gbWFueSBm
b3JtYXRzLCBhbmQgbXB2LCB3aGljaCBwbGF5cyBldmVuIG1vcmUgYXVkaW8gYW5kIHZpZGVvIGZp
bGVzIGFuZCBjYW4gZXZlbiBwbGF5IHRoZW0gc3RyYWlnaHQgb2ZmIFlvdXR1YmUgYW5kIG90aGVy
IHdlYnNpdGVzLiBJZiB5b3UncmUgc3BlY2lmaWNhbGx5IGxvb2tpbmcgZm9yIGxpYnJhcnkgZGF0
YWJhc2UgYW5kIHBsYXllciBmdW5jdGlvbmFsaXR5IGluIGEgc2luZ2xlIHBhY2thZ2UsIENsZW1l
bnRpbmUsIFN0cmF3YmVycnkgYW5kIFJoeXRobWJveCBjYW4gYWxsIGRvIHRoaXMsIGFsdGhvdWdo
IEkgZG9uJ3QgdXNlIHRoYXQgc3BlY2lmaWMgZnVuY3Rpb25hbGl0eSwgc28gSSBjb3VsZG4ndCB0
ZWxsIHlvdSBob3cgd2VsbCBpdCB3b3Jrcy4gTWFueSBvZiB0aGUgcGxheWVycyBJIG1lbnRpb24g
aGVyZSB3aWxsIGFsc28gYWxsb3cgeW91IHRvIGZpeCB0aGVpciB0YWdzIGlmIHRoZXkncmUgbm90
IGNvcnJlY3QgZm9yIHNvbWUgcmVhc29uLCBvciB3cml0ZSB0aGVtIGlmIHRoZXkgZG9uJ3QgYWxy
ZWFkeSBleGlzdCBhcyB3ZWxsLiBJZiB0aGVyZSBpcyBzb21lIG90aGVyIGZ1bmN0aW9uYWxpdHkg
eW91IG5lZWRlZCB0aGF0IEknbSBub3QgYXdhcmUgb2YsIGZlZWwgZnJlZSB0byBsZXQgbWUga25v
dy4gSG9wZSB0aGlzIGhlbHBzLgo+IAo+IH5LeWxlCj4gCj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1h
bi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEBy
ZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

