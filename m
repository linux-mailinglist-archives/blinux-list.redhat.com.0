Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id A5A0B3D49A7
	for <lists+blinux-list@lfdr.de>; Sat, 24 Jul 2021 21:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1627155895;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=xCLCicWZO1yZ3xnQEtdfShK/cMLTKYuFJms7Jc3VMTc=;
	b=Dg4fkYWUEj9r92tl/0uKYEfc0K+bt2xHP8CEaxVMqId5zr4amvPCrGNIncOto5pkZtKGYE
	+w02z8qN96fPjShRrMzJNQXefoKtUvxVAsDKy/uEfJ4fItw9rSc5NY+iInpbikaQYZkUrI
	WyT5PCZe2GpqhFZjmm0/SE8HNz3wTRM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-237-nSJTAkv5M_KDr8ZkXnsiHg-1; Sat, 24 Jul 2021 15:44:54 -0400
X-MC-Unique: nSJTAkv5M_KDr8ZkXnsiHg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 64A10107ACF5;
	Sat, 24 Jul 2021 19:44:48 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 459FD60C17;
	Sat, 24 Jul 2021 19:44:45 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 983FC180BAB2;
	Sat, 24 Jul 2021 19:44:37 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 16OJgV4B017936 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 24 Jul 2021 15:42:31 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2850410F8E0F; Sat, 24 Jul 2021 19:42:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 23F3A10F8E0C
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 19:42:27 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B862480066D
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 19:42:27 +0000 (UTC)
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com
	[209.85.214.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-464-VZ4MKyHMNQGHHdpW5BqZyg-1; Sat, 24 Jul 2021 15:42:25 -0400
X-MC-Unique: VZ4MKyHMNQGHHdpW5BqZyg-1
Received: by mail-pl1-f181.google.com with SMTP id e21so2516213pla.5
	for <blinux-list@redhat.com>; Sat, 24 Jul 2021 12:42:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=YIqhHzW5JUwfFG1JRz72mXYXC7OqFXoV6tBeJpFbjZo=;
	b=RzqQxjyrjhvUGoLoUW2KfmJ10jOdawVDLB2aW3YlHDQBK4iroF3pg2xxVhSrwkBQKf
	aARdmuce856FwSa8S0aa8TfbLn7v+JOh8gER7v6CMyAwpNyxkR2RqQSAEDlayb/5Cre6
	7murQXZ5slR9E4K2CJ1KsKqX5GPCPRIfqKjN/v+7wr++lv7lr9BmLLapnJKQkJ1zCbss
	xXGgsx05d0C6wlzulZi59DvnNYPeGhlcxjwvrXczKYTiCdxqeT7c66VA382vgTaxTx4v
	VPmTP2hB1ECOC+adinFwkJCnBLwkW2T1evBetpsVHUajrnsgNUPzWVPvVyhtDAEC3OUA
	xN/g==
X-Gm-Message-State: AOAM531Ehzqbq0+t0o4MFCiBYdWsrQ1DfJxWnw27FPPCYiME4S8dqRck
	mvd9STztR5zIYm/9G29piNHZsnRzkS4=
X-Google-Smtp-Source: ABdhPJzV1BFOfhkyEG14301o+FwFMxQblmGebmLgvxWlDmeBqe2oZVcYcT2kKh+qHbY545Znrtzaeg==
X-Received: by 2002:a05:6a00:24d1:b029:33d:d5ad:b903 with SMTP id
	d17-20020a056a0024d1b029033dd5adb903mr10762147pfv.0.1627155743862;
	Sat, 24 Jul 2021 12:42:23 -0700 (PDT)
Received: from [192.168.1.10] (wsip-24-249-254-99.tc.ph.cox.net.
	[24.249.254.99]) by smtp.gmail.com with ESMTPSA id
	g1sm41333814pgs.23.2021.07.24.12.42.23 for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 24 Jul 2021 12:42:23 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 13.4 \(3608.120.23.2.7\))
Subject: Re: Flatpak on Slint
Date: Sat, 24 Jul 2021 12:42:21 -0700
References: <c7b551f8-499a-1ecc-f221-387de0801c63@gmail.com>
	<2c34c816-a1e1-7a47-5bca-f35884279da3@slint.fr>
	<58abee7f-4023-5adf-b49e-6c6fb3e20a60@gmail.com>
To: blinux-list@redhat.com
In-Reply-To: <58abee7f-4023-5adf-b49e-6c6fb3e20a60@gmail.com>
Message-Id: <ED6E2EBB-21F6-4576-AF52-059F70F8BAF0@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 16OJgV4B017936
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

Rm9yIGEg4oCcUGFpbiBmcmVlIGV4cGVyaWVuY2UsIHVzZSBhIE1hYy7igJ0KClllYWgsIHJpZ2h0
LiBJIGRvIHVzZSBhIE1hYyBhbmQgc29tZSB0aGluZ3Mgb24gdGhlcmUgdGhhdCBhcmVu4oCZdCBw
YXJ0IG9mIHRoZSBjb3JlIE9TIGFyZSBwYWluZnVsLiBMZXRzIHNlZSwgc29tZSBhcHBzIChsaWtl
IENoaXJwIGZvciBwcm9ncmFtbWluZyByYWRpb3MsIGFuZCBzb21lIGNvbW1lcmNpYWwgYXBwcykg
anVzdCBhcmVu4oCZdCBhY2Nlc3NpYmxlIHVzaW5nIFZvaWNlT3ZlciAodGhlIHNjcmVlbiByZWFk
ZXIpLiBBbHNvLCB1bmxlc3MgeW91IGFyZSBhIGNvbW1hbmQgbGluZSBqdW5reSwgeW91IGFyZSBn
b2luZyB0byBmaW5kIHRoYXQgbGl0ZXJhbGx5IGFueSBYIGRlc2t0b3AgYmFzZWQgYXBwIGlzIGlu
YWNjZXNzaWJsZSBhbmQgdGhlcmUgaXMgbm8gT1JDQSBwb3J0IGZvciBtYWNwb3J0cy4gSWYgeW91
IHdhbnQgdG8gdXNlIG1hY3BvcnRzLCBiZXR0ZXIgbGVhcm4gdGhlIGNvbW1hbmQgbGluZSBiZWNh
dXNlIHRoYXQgaXMgYWJvdXQgdGhlIG9ubHkgd2F5IHlvdSBhcmUgZ29pbmcgdG8gaGF2ZSBhY2Nl
c3MgdG8gYXBwcyB0aGF0IG1pZ2h0IG5vdCBiZSBkaXJlY3RseSBkZXZlbG9wZWQgZm9yIE9TIFgu
IFRoZW4gYWdhaW4sIG11Y2ggdGhlIHNhbWUgdGhpbmcgY2FuIGJlIHNhaWQgYWJvdXQgTGludXgg
YW5kIFdpbmRvd3MgYXMgd2VsbC4gV2UsIHRoZSBibGluZCwgYXJlIHVuaXF1ZSAoZXZlbiBpbiB0
aGUgY29tcHV0aW5nIHdvcmxkKSBiZWNhdXNlIHdlIGhhdmUgdG8gdXNlIG90aGVyIHNlbnNlcyB0
byBwZXJjZWl2ZSBvdXIgZW52aXJvbm1lbnQgYW5kIG1vc3QgcGVvcGxlLCBlc3BlY2lhbGx5IHRo
b3NlIGluIHByb2dyYW0gZGV2ZWxvcG1lbnQgb3IgSVQsIGNhbuKAmXQgKG9yIHdvbuKAmXQpIHVu
ZGVyc3RhbmQgdXMgYW5kIG91ciBwYXJ0aWN1bGFyIG5lZWRzLiBJdOKAmXMganVzdCBhIGZhY3Qg
b2YgbGlmZS4gQWJvdXQgdGhlIG9ubHkgd2F5IHRvIG92ZXJjb21lIHRoaXMgaXMgdG8gYmVjb21l
IGFuIGV4cGVydCBpbiB0aGUgZmllbGQgYW5kIGdldCBoaXJlZCBmb3IgdGhhdCBraW5kIG9mIHdv
cmsuIEFsc28sIHdvcmtpbmcgYXMgYSBkZXZlbG9wZXIgb24gbWFueSBvcGVuIHNvdXJjZSBwcm9q
ZWN0cyB3aWxsIGxvb2sgZ29vZCBvbiB0aGUgcmVzdW1lIGFuZCBnZXQgbW9zdCBIUiBwZW9wbGUg
dG8gc2VlIHBhc3QgdGhlIGJsaW5kbmVzcyAobW9zdGx5KS4gTGlrZSBpdCBvciBub3QsIDg1JSBv
ZiBodW1hbml0eSBpcyBzdGlsbCBzaWdodGVkLCBzbyB3ZSBzdGlsbCBoYXZlIHRvIG1ha2Ugb3Vy
IG93biB0b29scyB0aGF0IGFsbG93IHVzIHRvIGFkYXB0IHRvIHRoZSB3b3JsZCBhcm91bmQgdXMu
IFRoYXQgb3IgYmVjb21lIGEgdW5pdGVkIHBvbGl0aWNhbCBmb3JjZSAobXVjaCBsaWtlIHRoZSBk
ZWFmKSBhbmQgZm9yY2UgdGhlIGlzc3VlLgoKQnR3LCBJIGRvIHVzZSBtYWNwb3J0cyBoZXJlIGFu
ZCBJIG9mdGVuIHVzZSBjb21tYW5kIGxpbmUgdXRpbGl0aWVzIHRvIGFjY29tcGxpc2ggd2hhdCBh
IEdVSSBhcHAgbWlnaHQgbm90IGRvIGJlY2F1c2Ugb2YgdmlzaWJpbGl0eSBpc3N1ZXMgd2l0aGlu
IHRoZSBhcHAgaW50ZXJmYWNlIHRvIFZvaWNlT3Zlci4gTGF0ZWx5LCBob3dldmVyLCBJIGhhdmUg
cnVuIGludG8gYnJlYWthZ2UgcHJvYmxlbXMgd2l0aCBzb21lIG9mIHRoZSBkZXZlbG9wbWVudCBh
cHBzIChsaWtlIGJvb3N0KS4gU29tZSBsaWJyYXJpZXMgZG9u4oCZdCBnZXQgaW5zdGFsbGVkIGJ5
IGRlZmF1bHQsIGFuZCBhcyBhIHJlc3VsdCwgdGhpcyBicmVha3MgdGhlIGNvbXBpbGVzIG9mIHBh
Y2thZ2VzIHRoYXQgbWlnaHQgZGVwZW5kIG9uIGJvb3N0IChmb3IgaW5zdGFuY2UpLiBGb3IgZXhh
bXBsZTogdHJhbnNjb2RlIGRlcGVuZHMgb24gTUtWVG9vbG5peCB3aGljaCBkZXBlbmRzIG9uIHRo
ZSBkb3VibGUgcHJlY2lzaW9uIGxpYnJhcnkgaW4gYm9vc3QgKHdoaWNoIGlzIG1pc3NpbmcpLiBP
dGhlciBwcm9ncmFtcyAobGlrZSBEVkRSaXAsIGFuZCBzb21lIG90aGVycykgZGVwZW5kIG9uIHRy
YW5zY29kZS4gU28sIGEgYmlnIGNodW5rIG9mIHRoZSBtdWx0aW1lZGlhIGluZGV4IGZvciBtYWNw
b3J0cyBpcyBlZmZlY3RpdmVseSBicm9rZW4gYW5kIHRoZSBkZXZlbG9wZXJzIG9mIGJvb3N0IGFy
ZSB0cnlpbmcgdG8gbWFrZSB0aGUgY2xhaW0gdGhhdCBzb21ldGhpbmcgaXMgb2ZmIGluIG15IGlu
c3RhbGwgb2YgbWFjcG9ydHMgYW5kIG1pc2NvbmZpZ3VyYXRpb24gb2YgdGhlIGRldmVsb3BtZW50
IGVudmlyb25tZW50LiBZZXQsIEkgZGlkIHRoZSBkZWZhdWx0IGluc3RhbGwgdXNpbmcgdGhlIGlu
c3RydWN0aW9ucyBhdmFpbGFibGUgb24gdGhlIG1hY3BvcnRzIHNpdGUuIEJhc2ljYWxseSwgdGhh
dCBtZWFucyBpbnN0YWxsaW5nIFhjb2RlLCB0aGVuIENvbW1hbmQgbGluZSB0b29scyBmb3IgWGNv
ZGUsIHRoZW4gdGhlIG1hY3BvcnRzIGRldmVsb3BtZW50IHRyZWUgdmlhIHBhY2thZ2UuIEFmdGVy
IHdoaWNoLCBydW5uaW5nIHRoZSBwb3J0IGNvbW1hbmQgdG8gc2VsZiB1cGRhdGUsIHVwZ3JhZGUg
b3V0ZGF0ZWQsIGV0Yy4gVGhlbiBpbnN0YWxsYXRpb24gb2YgdGhlIHNwZWNpZmljIGl0ZW1zIG5l
ZWRlZCAobGlrZSBib29zdCwgYm9vc3TigJRqYW0sIEJvb3N0LWJ1aWxkLCBQSFAsIFB5dGhvbiwg
UGVybCwgUnVieSwgYW5kIFRDTC4KClNvLCB5ZWFoLCDigJxQYWluIGZyZWUgZXhwZXJpZW5jZeKA
nT8gVWhoIGh1aCEgQXBwbGUgdXNlZCB0byBiZSB2ZXJ5IGdvb2QgYXQgdGhpcyB3aXRoIHRoZWly
IOKAnGp1c3Qgd29ya3PigJ0gc2NoZW1lLiBIb3dldmVyLCBzaW5jZSBTdGV2ZSBKb2JzIHBhc3Nl
ZCBvbiwgdGhlaXIgcXVhbGl0eSBjb250cm9sIGhhcyBmYWxsZW4gb2ZmIHF1aXRlIGEgYml0LiBO
b3csIGl04oCZcyDigJxKdXN0IHdvcmtzLCBzb21ldGltZXPigJ0uCgpOb3csIGFzIGZvciB0aGUg
ZmxhdCBwYWNrIGlzc3VlIGluIFNMSU5ULCB5b3UgbWlnaHQgbmVlZCB0byBtYWtlIHN1cmUgdGhh
dCBhbGwgZGVwZW5kZW5jaWVzIGFyZSBjb21wbGV0ZWx5IGluc3RhbGxlZCBhbmQgY29uZmlndXJl
ZC4gQWxzbywgYW55IHNlY29uZGFyeSBkZXBlbmRlbmNpZXMgbm90IGxpc3RlZCAoYW5kIEkgaGF2
ZSBmb3VuZCBxdWl0ZSBhIGZldyBvdmVyIHRoZSB5ZWFycyBiZWNhdXNlIGRldiB0ZWFtcyBvZnRl
biBmb3JnZXQgdGhlc2UgbGl0dGxlIGRldGFpbHMpLiBJbiBmYWN0LCBJIGhhdmUgZm91bmQgdGhh
dCB0aGUgb25seSB3YXkgdG8gY292ZXIgYWxsIGV2ZW50dWFsaXRpZXMgaXMgdG8gc2ltcGx5IGlu
c3RhbGwgZXZlcnl0aGluZyBpbiB0aGUgZGV2ZWxvcG1lbnQgZW52aXJvbm1lbnQuIEJhc2ljYWxs
eSwgZ3JhYiBhbGwgdGhlIGRldmVsIHBhY2thZ2VzIGFuZCB0aGVuIHN0YXJ0IGJ1aWxkaW5nIHRo
ZW0uIFRoaXMgd2F5LCB5b3UgZW5kIHVwIHdpdGggYSBidWlsZCBlbnZpcm9ubWVudCB0aGF0IGlz
IGFzIGNvbXBsZXRlIGFzIHlvdSBjYW4gZ2V0IGl0IGFuZCBpcyBhbHNvIG9wdGltaXplZCBmb3Ig
eW91ciBtYWNoaW5lLiBJIGRpZCB0aGlzIHF1aXRlIGEgbG90IG92ZXIgdGhlIHllYXJzIHN0YXJ0
aW5nIHdpdGggYnVpbGRpbmcgYSBuZXcga2VybmVsLCBjb21waWxpbmcgaW4gdGhlIG1vZHVsZXMg
Zm9yIHRoYXQgaGFyZHdhcmUgKHRoaXMgbWV0aG9kIHdvdWxkIGJsb2F0IHRoZSBrZXJuZWwgYSBi
aXQsIGJ1dCB3b3VsZCByZW1vdmUgdGhlIGlzc3VlIG9mIGluc3RhbGxpbmcgb3IgbG9hZGluZyBu
ZXcgbW9kdWxlcyB3aXRoIGNoYW5nZXMgaW4gaGFyZHdhcmUsIHdoaWNoIGRvZXNu4oCZdCBoYXBw
ZW4gaW4gbGFwdG9wcykuIEJ1aWxkaW5nIGV4dGVybmFsIG1vZHVsZXMgdGhhdCBjYW4gYmUgbG9h
ZGVkIHNsaW1zIGRvd24gdGhlIGtlcm5lbCBhIGJpdCBhbmQgd291bGQgd29yayBiZXN0IGluIGEg
ZGVza3RvcCB0b3dlciB3aGVyZSBoYXJkd2FyZSBjYW4gYmUgY2hhbmdlZC4gT25lIG5pY2UgdGhp
bmcgYWJvdXQgYnVpbGRpbmcgYXBwcyBsaWtlIHRoaXMgaXMgdGhhdCB5b3UgY2FuIGNvbXBpbGUg
aW4gdGhlIGxpYnJhcmllcy4gU3VyZSwgdGhhdCBibG9hdHMgdGhlIGFwcCBhIGJpdCwgYnV0IHRo
ZW4sIHlvdSBjb3VsZCBidWlsZCBhbmQgdGhlbiBvbmNlIHlvdSBoYXZlIGJ1aWx0IGFsbCB5b3Ug
bmVlZCwgeW91IGNhbiByZW1vdmUgdGhlIGxpYnJhcmllcyBhbmQgb3RoZXIgZmlsZXMgaW4gdGhl
IGRldiB0cmVlIGFuZCBzdGlsbCBoYXZlIGZ1bGx5IHJ1bm5pbmcgYXBwcy4gVGhhdCB3aWxsIHNs
aW0gZG93biB0aGUgc3lzdGVtIGEgbG90IHdoZW4geW91IGRvbuKAmXQgbmVlZCB0b28ga2VlcCB0
aGUgYnVpbGQgZW52aXJvbm1lbnQgYXJvdW5kLiBJdCByZWFsbHkgYWxsIGRlcGVuZHMgb24gd2hh
dCB5b3Ugd2FudCB0byBkby4KCi1FcmljCkxlYWRlciBvZiB0aGUgVGVjaG5vbWFnZSBHdWlsZC4K
Cgo+IE9uIEp1bCAyNCwgMjAyMSwgYXQgMTA6NDAgQU0sIExpbnV4IGZvciBibGluZCBnZW5lcmFs
IGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+IAo+IFllcCwgcmVh
ZGluZyBhbGwgdGhlIGRvY3VtZW50YXRpb24gd2FzIGFjdHVhbGx5IGEgZ29vZCBpZGVhLgo+IAo+
IAo+IEkgZ290IGNhd2JpcmQgdG8gd29yayBvbiBTbGludC4gWWVhaCwgaXQncyBhIHBhaW4sIGJ1
dCB3aGF0IHRoZSBoZWNrLgo+IAo+IAo+IEZvciBhIHBhaW4tZnJlZSBjb21wdXRpbmcgZXhwZXJp
ZW5jZSwgdXNlIGEgTWFjLgo+IAo+IAo+IFdhcm0gcmVnYXJkcywKPiAKPiBCcmFuZHQgU3RlZW5r
YW1wCj4gCj4gU2VudCB1c2luZyBUaHVuZGVyYmlyZCBmcm9tIFNsaW50Cj4gCj4gT24gNy8yNC8y
MSA0OjUzIFBNLCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIHdyb3RlOgo+PiBI
aSBCcmFuZHQsCj4+IAo+PiBJIG5ldmVyIHVzZWQgZmxhdHBhayBvciB0d2l0dGVyLCBob3dldmVy
Li4uCj4+IAo+PiBtYXliZSBhIHBvc3QgaW5zdGFsbGF0aW9uIGNvbmZpZ3VyYXRpb24gaXMgbmVl
ZGVkLCBhcyBpbmRpY2F0ZWQgaW46Cj4+IGh0dHBzOi8vc2xhY2tidWlsZHMub3JnL3NsYWNrYnVp
bGRzLzE0LjIvZGVza3RvcC9mbGF0cGFrL1JFQURNRQo+PiAKPj4gSWYgdGhpcyBkb2Vzbid0IGhl
bHAsIHBsZWFzZSBwb3N0IHRoZSBleGFjdCBzdGVwcyB5b3UgdG9vayB0byBpbnN0YWxsIGZsYXRw
YWsKPj4gdGhlbiBjYXdiaXJkIGFuZCBzdGFydCBjYXdiaXJkLgo+PiAKPj4gVGhlbiBJJ2xsIHRy
eSB0byByZXByb2R1Y2VzIGxhdGVyIHRvZGF5Lgo+PiAKPj4gQ2hlZXJzLAo+PiAKPj4gRGlkaWVy
Cj4+IC0tIAo+PiBEaWRpZXIgU3BhaWVyCj4+IAo+PiAKPj4gTGUgMjQvMDcvMjAyMSDDoCAxNjoy
NywgTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiBhIMOpY3JpdCA6Cj4+PiBIaSBh
bGwsCj4+PiAKPj4+IAo+Pj4gSSBpbnN0YWxsZWQgZmxhdHBhayBvbiBteSBTbGludCBpbnN0YWxs
YXRpb24sIGZvciB0aGUgc2ltcGxlIHJlYXNvbiwgdGhlcmUgYXJlIG5vIHVwIHRvIGRhdGUgVHdp
dHRlciBjbGllbnRzIHRoYXQgSSBjYW4gZmluZC4KPj4+IAo+Pj4gCj4+PiBJIGxvb2tlZCBhdCB0
aGUgU2xhY2tidWlsZHMsIGJ1dCBub3RoaW5nLiBDYXdiaXJkLCBteSBmYXZvcml0ZSBMaW51eCBj
bGllbnQsIGZvciBub3csIGlzIGF2YWlsYWJsZSBhcyBhIGZsYXRwYWssIGJ1dCB3aGVuIEkgdHJ5
IGFuZCBydW4gaXQsIEkgZ2V0IGEgYnJva2VuIFBpcGUgZXJyb3IuIENhbiBhbnlvbmUgaGVscCB3
aXRoIHRoaXMgaXNzdWU/Cj4+PiAKPj4gCj4+IAo+PiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+PiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPj4gQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQo+PiBodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFu
L2xpc3RpbmZvL2JsaW51eC1saXN0Cj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlz
dEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0
dHBzOi8vbGlzdG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

