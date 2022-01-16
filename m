Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F96E48FE2F
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 18:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642354309;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=wxfSlTWLKUFt5i97nHYLTVs7AIaib6xHY5E4VLhJ9Cw=;
	b=iwwPchtWBSqzJV5liwLbZYdc0m/AJD6//nre1uw7ORzajdkiBMXAN3mcxawcBqCvKmYNHX
	qYWEaP+b0n1bqoJeQLltB2lFl9Q05CLLhOeGWYIeIgQsolmnKEtSv8F/VX+0bGQJ8oy6Mu
	ITw+eY7EkuGhN64NFOnQT8/3Maxz870=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-227-ZTeBaRJkMRmFyirwELwwGQ-1; Sun, 16 Jan 2022 12:31:44 -0500
X-MC-Unique: ZTeBaRJkMRmFyirwELwwGQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 92DD31898291;
	Sun, 16 Jan 2022 17:31:40 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 0E52F2DE9F;
	Sun, 16 Jan 2022 17:31:40 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EE1BC4BB7C;
	Sun, 16 Jan 2022 17:31:38 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GHVXMu002304 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 12:31:33 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 45E71C15E74; Sun, 16 Jan 2022 17:31:33 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 412FBC159B3
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 17:31:33 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 25BDF85A5B5
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 17:31:33 +0000 (UTC)
Received: from mail-pf1-f176.google.com (mail-pf1-f176.google.com
	[209.85.210.176]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-357-5KMAfA3jPgyHs2_TnXuImQ-1; Sun, 16 Jan 2022 12:31:29 -0500
X-MC-Unique: 5KMAfA3jPgyHs2_TnXuImQ-1
Received: by mail-pf1-f176.google.com with SMTP id 128so7657267pfe.12
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 09:31:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-transfer-encoding;
	bh=a1O1gVpmqS+MD535I6EHU+QBKNrzZ5WQ8Xrz3OjrU00=;
	b=EnSlx9vbZqfnYDnppav9D91C+wTqbsriRrSsz3jkKoqN8LBM2BF97TtFMoJxCB3QpC
	7ADkOY1Uy2H7O2iMorWZGIO5fP4ve9sBdMBEL2dxx471nq8ysP2Gl4dYZnRaOCFCOxRN
	xkfUWOS0U+VVzbHj4XmSx6h8MGspkClXRq7GxVAJoXyx27Cm9b9PoK+cBu6G0lO2cyRC
	LrcQg684J2CvBqIZuFtcU6OVaNIPvItuOxDK2jhkUgYqwCUj6ufFbdlpRRvKBOMRfXyk
	m3aJDi7vlScRN5ic4dcLhW6ZPByAe40StF+2FRqqg7b+yAfBwpF9OQR/uDIqbY6sXXuL
	Az/A==
X-Gm-Message-State: AOAM531/gmE1xT3xv/iOCw6orzhkGbcDFQMlN8BcGI+tyw3w+F8U904x
	IyOPLjdcM86a8e6vEjUsnZvk4wiKG5AW9UGyfgM5xG99
X-Google-Smtp-Source: ABdhPJxWOA2JdzAC+gdZcbs85p3YAdfZUbITnlL3Mm105HlA0qoe79dsRTc2v4aGZq7kV1B/CcHOlwy6XMnDoFI75jc=
X-Received: by 2002:a63:784f:: with SMTP id t76mr15586693pgc.156.1642354288622;
	Sun, 16 Jan 2022 09:31:28 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6a11:523:0:0:0:0 with HTTP; Sun, 16 Jan 2022 09:31:27
	-0800 (PST)
In-Reply-To: <b46cb80c-7549-f332-9baa-a42afa678a96@slint.fr>
References: <7d95c4a2-beae-efc3-9998-792c3a9cbdef@gmail.com>
	<b6d7e61-4ff9-dc82-a7d4-2f6ee97bf1e1@panix.com>
	<cb6c740b-5aac-6472-9419-ad31e9c25692@gmail.com>
	<CAM+Q2c5qGage2PxM7v420GHTL_RjJZU5mjB7Hq4EZR=oYpCkSw@mail.gmail.com>
	<8b1b8fcb-2513-2ac8-77db-4aa49e3c225a@gmail.com>
	<e5ad6707-835a-7827-7988-a19c05973fda@gmail.com>
	<b46cb80c-7549-f332-9baa-a42afa678a96@slint.fr>
Date: Sun, 16 Jan 2022 10:31:27 -0700
Message-ID: <CAM+Q2c5qyi-CERRqxE-YuG+hSojrbVW6Q+8tGC9N3ohzx9b8hA@mail.gmail.com>
Subject: Re: Getting Started with linux
To: blinux-list@redhat.com
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 20GHVXMu002304
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SG93YXJkLCBteSBuYW1lIGlzIEphY2tpZSBNY0JyaWRlLiBOb3RlIEkgc2FpZCB0aGUgU2xpbnQg
ZGV2ZWxvcGVyIGlzCm9uIHRoaXMgbGlzdCwgJiBoZSBqdXN0IHBvcHBlZCBpbnRvIHRoaXMgdGhy
ZWQuIEhpcyBuYW1lIGlzIERpZGllci4KCkkgZG9uJ3QgcmVhbGx5IGtub3cgaGltLCAoJiB0aGF0
J3MgdW5mb3J0dW5hdGUpLCBCdXQgSSd2ZSBmb3VuZCBoaW0gdG8KYmUgdmVyeSByZXNwb25zaXZl
IHRvIHRob3NlIHJlcXVlc3RpbmcgaGVscCB3L1NsaW50LgoKSSBteXNlbGYgZG9uJ3QgdXNlIGl0
LCBzaW1wbHkgYmVjYXVzZSBteSB3b3JrIGlzIHcvd2Vic2VydmVycyAmIGZvcgp0aGF0IEkgZXhj
bHVzaXZlbHkgdXNlIFNTSCAmIENMSS4gSSd2ZSBiZWVuIGRvaW5nIHRoYXQgZm9yIDExIHllYXJz
Cm5vdywgYnV0IGlmIEkgd2VyZSB0byBldmVyIHVzZSBhIExpbnV4IGRlc2t0b3AsIGRlc3BpdGUg
bXkgZXhwZXJpZW5jZQpsZXZlbCwgU2xpbnQgd291bGQgYmUgbXkgZmlyc3QgY2hvaWNlLCBzaW1w
bHkgYmVjYXVzZSBpdCBhcHBlYXJzIHRvIG1lCnRvIGJlIHRoZSBtb3N0IGhhc3NsZS1mcmVlLgoK
WU1NViwgb2YgY291cnNlLCAmIEkgc3VzcGVjdCBvdGhlcnMgd291bGQgZGlzYWdyZWUsIGJ1dCwg
ZnJvbSBteQpleHBlcmllbmNlLCBiZWdpbm5lcnMgd2hvIGhhdmUgdG8gc3RydWdnbGUgYSBsb3Qg
dy9zb21ldGhpbmcgb2Z0ZW4KanVzdCBzYXkgInNjcmV3IGl0IiAmIGdpdmUgdXAuIEl0J3MgZXNw
ZWNpYWxseSBldmVuIG1vcmUgdHJ1ZSB3aGVuCmxhY2sgb2YgYWNjZXNzaWJpbGl0eSBiZWNvbWVz
IGEgZmFjdG9yLiBJIHRoaW5rIHRoYXQncyBhIHdob2xlIGxvdApsZXNzIGxpa2VseSB0byBoYXBw
ZW4gdy9hIGJsaW5kIHVzZXIgJiBTbGludCwgc2ltcGx5IGJlY2F1c2UgdGhlCmRldmVsb3BlciBp
cyBhbHNvIGJsaW5kLCBzbyBoZSBrbm93cyB3aGF0J3MgcmVxdWlyZWQgJiBoZSByZWFsbHkKYXBw
ZWFycyB0byBjYXJlIGEgZ3JlYXQgZGVhbC4KCk9uIDEvMTYvMjIsIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IEhpLAo+
Cj4gbXkgZnJpZW5kIEt5bGUsIEkgYmV0IHRoYXQganVzdCB0cnlpbmcgU2xpbnQgKG5vdCBTbGFj
a3dhcmUpIGNhbiBjaGFuZ2UgeW91cgo+IG9waW5pb24gYWJvdXQgaXQgPHNtaWxlPi4KPgo+IEl0
IHlvdSBzdWNjZWVkIGJyZWFraW5nIGl0LCBwbGVhc2UgbGV0IG1lIGtub3cgaG93LCBzbyBJIGtu
b3cgd2hhdCBJIHNob3VsZAo+IGVuaGFuY2UgYW5kL29mIGZpeCEKPgo+IENoZWVycywKPiBEaWRp
ZXIKPiAtLQo+IERpZGllciBTcGFpZXIKPiBTbGludCBtYWludGFpbmVyCj4KPgo+IExlIDE2LzAx
LzIwMjIgw6AgMTc6NDIsIExpbnV4IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gYSDDqWNy
aXTCoDoKPj4gU2xpbnQgaXMgZXNzZW50aWFsbHkgU2xhY2t3YXJlIHdpdGggYSBmZXcgbW9kaWZp
Y2F0aW9ucy4gSSBicm9rZSBTbGFja3dhcmUKPj4gc2V2ZXJhbCB0aW1lcywgd2hpY2ggaXMgYWN0
dWFsbHkgd2h5IEkgbGVmdCBpdCBlYXJseSBvbi4gSXQgd2FzIG15IGZpcnN0Cj4+IGV4cGVyaWVu
Y2Ugd2l0aCBMaW51eCwgYnV0IEkgd291bGRuJ3Qgc2F5IGl0IHdhcyBteSBtb3N0IGVuam95YWJs
ZQo+PiBleHBlcmllbmNlLiBJCj4+IGV2ZW50dWFsbHkgYnJva2UgdGhpbmdzIG9uIHB1cnBvc2Ug
aW4gb3RoZXIgZGlzdHJpYnV0aW9ucyBpbiBvcmRlciB0bwo+PiBsZWFybiBob3cKPj4gdG8gZml4
IHRoZW0sIGFuZCBJIGd1ZXNzIEkgY2FuIHRoYW5rIFNsYWNrd2FyZSBmb3IgdGhhdCBMT0wuIEkg
YWN0dWFsbHkKPj4gZm91bmQKPj4gUmVkIEhhdCwgd2hpY2ggYmVjYW1lIEZlZG9yYSwgdG8gYmUg
b25lIG9mIHRoZSBlYXNpZXN0IHRvIHVzZSBvdXQgb2YgdGhlCj4+IGJveCwKPj4gYW5kIGl0IGlz
IGtlcHQgdXBkYXRlZCBiZXR0ZXIgdGhhbiBVYnVudHUsIHdoaWNoIGlzIGFyZ3VhYmx5IG9uZSBv
ZiB0aGUKPj4gZWFzaWVzdAo+PiBvZiBhbGwgdG8gdXNlIG92ZXJhbGwuIEFjdHVhbGx5LCBBcmNo
IGlzIGdyZWF0IG9uY2UgeW91IGdldCBpdCBnb2luZywgYnV0Cj4+IHRoZXJlCj4+IGlzIGEgbG90
IHRoYXQgY2FuIGJyZWFrIHdoaWxlIHlvdSdyZSBpbnN0YWxsaW5nLCBzbyBJIGRvbid0IHJlY29t
bWVuZCBpdAo+PiBmb3IKPj4gcGVvcGxlIHdobyBqdXN0IHdhbnQgdG8gc2VlIHdoYXQgdGhpbmdz
IGxvb2sgbGlrZS4gTXkgcGVyc29uYWwKPj4gcmVjb21tZW5kYXRpb25zCj4+IGZvciBzZWVpbmcg
d2hhdCB0aGluZ3MgbG9vayBsaWtlIGFuZCBob3cgd2VsbCB0aGV5IHdvcmsgcmlnaHQgb3V0IG9m
IHRoZQo+PiBib3gKPj4gd291bGQgYmUgZWl0aGVyIEZlZG9yYSBMaXZlIFdvcmtzdGF0aW9uCj4+
Cj4+IGh0dHBzOi8vZGwuZmVkb3JhcHJvamVjdC5vcmcvcHViL2ZlZG9yYS9saW51eC9yZWxlYXNl
cy8zNS9Xb3Jrc3RhdGlvbi94ODZfNjQvaXNvL0ZlZG9yYS1Xb3Jrc3RhdGlvbi1MaXZlLXg4Nl82
NC0zNS0xLjIuaXNvCj4+Cj4+Cj4+IG9yIHRoZSB2ZXJzaW9uIEkgcGVyc29uYWxseSB1c2U6IEZl
ZG9yYSBNYXRlIENvbXBpego+Pgo+PiBodHRwczovL2RsLmZlZG9yYXByb2plY3Qub3JnL3B1Yi9m
ZWRvcmEvbGludXgvcmVsZWFzZXMvMzUvU3BpbnMveDg2XzY0L2lzby9GZWRvcmEtTUFURV9Db21w
aXotTGl2ZS14ODZfNjQtMzUtMS4yLmlzbwo+Pgo+Pgo+PiBCb3RoIG9mIHRoZXNlIGluY2x1ZGUg
dGhlIE9yY2Egc2NyZWVuIHJlYWRlciBvbiB0aGUgaXNvIGl0c2VsZi4KPj4gV29ya3N0YXRpb24K
Pj4gYWxsb3dzIHlvdSB0byBwcmVzcyBhbHQrc3VwZXIrcyB0byBzdGFydCBPcmNhIG9uIHRoZSBk
ZXNrdG9wLCBhbmQKPj4gTUFURS1Db21waXoKPj4gc3RhcnRzIGl0IGJ5IHByZXNzaW5nIGFsdCtm
MiBhbmQgZW50ZXJpbmcKPj4KPj4gb3JjYQo+Pgo+PiBpbiB0aGUgcnVuIHdpbmRvdyB0aGF0IHBv
cHMgdXAuIEVpdGhlciB3YXksIHRoZSBpbnN0YWxsZXIgaXMgZmFpcmx5IGVhc3kKPj4gdG8gdXNl
LAo+PiBhbmQgSSBoYXZlIHN1Y2Nlc3NmdWxseSBpbnN0YWxsZWQgYm90aCB0byBhIGhhcmQgZHJp
dmUgYW5kIHRvIGEgVVNCIHRodW1iCj4+IGRyaXZlCj4+IHdpdGhvdXQgYnJlYWtpbmcgYW55dGhp
bmcuIFlvdSBjYW4gb2YgY291cnNlICJ0cnkgYmVmb3JlIHlvdSBidXksIiBqdXN0Cj4+IGxpa2Ug
eW91Cj4+IGNhbiB3aXRoIFVidW50dSwgbWVhbmluZyB0aGF0IHlvdSBoYXZlIGZ1bGwgYWNjZXNz
IHRvIHRoZSBzeXN0ZW0gd2l0aG91dAo+PiBpbnN0YWxsaW5nIHRvIGFueXRoaW5nIGF0IGFsbCwg
YW5kIHRoZW4gaWYgeW91IGRlY2lkZSB5b3UgZG8gd2FudCB0bwo+PiBpbnN0YWxsLAo+PiB5b3Ug
anVzdCBzdGFydCB0aGUgaW5zdGFsbGVyIGFuZCBzZXQgaXQgdXAgYWNjb3JkaW5nIHRvIHlvdXIg
bmVlZHMuCj4+Cj4+Cj4+IFRoYXQgc2FpZCwgRmVkb3JhIGFuZCBVYnVudHUgYm90aCBoYXZlIHZl
cnkgbGFyZ2UgYW5kIGhlbHBmdWwgdXNlciBiYXNlcywKPj4gYW5kCj4+IGNvbW11bml0eSBzdXBw
b3J0IGlzIGZhciBlYXNpZXIgdG8gZ2V0IHdoZW4geW91IG5lZWQgaGVscC4gVWJ1bnR1IHByb2Jh
Ymx5Cj4+IGhhcwo+PiB0aGUgbGFyZ2VzdCB1c2VyIGJhc2Ugb2YgYWxsLCBhbmQgdGhpcyBpcyBh
IGdvb2QgdGhpbmcgZm9yIHRob3NlIHBlb3BsZQo+PiB3aG8gYXJlCj4+IGdldHRpbmcgc3RhcnRl
ZC4gSSBjYW5ub3Qgb3ZlcmVzdGltYXRlIHRoZSBiZW5lZml0IG9mIGJyb2FkIGFuZCBkaXZlcnNl
Cj4+IGNvbW11bml0eSBzdXBwb3J0LCBhbmQgYm90aCBGZWRvcmEgYW5kIFVidW50dSBvZmZlciBz
dWNoIHN1cHBvcnQgb3dpbmcgdG8KPj4gdGhlaXIKPj4gbGFyZ2UgbnVtYmVycyBvZiB1c2VycyBh
bmQgdGhlaXIgd2lsbGluZ25lc3MgdG8gaGVscCBlYWNoIG90aGVyLiBTbyBiYXNlZAo+PiBvbgo+
PiB0aGlzIGFsb25lLCBJIHdvdWxkIHJlY29tbWVuZCBlaXRoZXIgRmVkb3JhIG9yIFVidW50dSBv
dmVyIGp1c3QgYWJvdXQKPj4gYW55dGhpbmcKPj4gZWxzZSwgYW5kIEZlZG9yYSBpcyBteSBwZXJz
b25hbCBjaG9pY2UgZHVlIHRvIGl0cyBmcmVxdWVudCBzb2Z0d2FyZQo+PiB1cGRhdGVzIGV2ZW4K
Pj4gaW4gYSByZWxlYXNlLgo+Pgo+PiB+S3lsZQo+Pgo+PiBfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbHNzdCBtYWlsaW5nIGxpc3QKPj4g
QmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWls
bWFuL2xpc3RpbmZvL2JsaW51eC1saXN0Cj4+Cj4KPgo+IF9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4v
bGlzdGluZm8vYmxpbnV4LWxpc3QKCgotLSAKU3Vic2NyaWJlIHRvIGEgV29yZFByZXNzIGZvciBO
ZXdiaWVzIE1haWxpbmcgTGlzdCBieSBzZW5kaW5nIGEgbWVzc2FnZSB0bzoKd3A0bmV3YnMtcmVx
dWVzdEBmcmVlbGlzdHMub3JnIHdpdGggJ3N1YnNjcmliZScgaW4gdGhlIFN1YmplY3QgZmllbGQg
T1IgYnkKdmlzaXRpbmcgdGhlIGxpc3QgcGFnZSBhdCBodHRwOi8vd3d3LmZyZWVsaXN0cy5vcmcv
bGlzdC93cDRuZXdicwomIGNoZWNrIG91dCBteSBzaXRlcyBhdCB3d3cuYnJpZ2h0c3RhcnN3ZWIu
Y29tICYgd3d3Lm15c2l0ZXNiZWVuaGFja2VkLmNvbQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgt
bGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGlu
Zm8vYmxpbnV4LWxpc3Q=

