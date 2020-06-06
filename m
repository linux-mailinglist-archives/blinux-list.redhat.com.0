Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id BA93D1F0727
	for <lists+blinux-list@lfdr.de>; Sat,  6 Jun 2020 17:00:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1591455605;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=ichHBeplUEmgdTgGdy7L6Iq2p93oyfM2zdjPW02bjZY=;
	b=hj0pQoneHYtA8M1/4ytWCNj6Zu9RBN8o+3l7o4WG5s0WwAGbY09/PQHGfkoclInJCTYdPL
	UtutB65bQvTXHp9Za7GcuhVV2/E9XnglTbhM271tHhxuQOgVVljcC6TX2zRR1kSPfVZLLh
	3gPlgZsHvtmxR6m0llHJSfcFZDWiDNA=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-508-q57g8hdaOYe0blE_acBN6A-1; Sat, 06 Jun 2020 11:00:00 -0400
X-MC-Unique: q57g8hdaOYe0blE_acBN6A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 606CF835B40;
	Sat,  6 Jun 2020 14:59:55 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 9F3BD6292E;
	Sat,  6 Jun 2020 14:59:52 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id CCFCD65D10;
	Sat,  6 Jun 2020 14:59:46 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 056EwIx3015564 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 6 Jun 2020 10:58:18 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2D4F72166B27; Sat,  6 Jun 2020 14:58:18 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 277B52166BA0
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 14:58:13 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 8000D8007A4
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 14:58:13 +0000 (UTC)
Received: from gateway31.websitewelcome.com (gateway31.websitewelcome.com
	[192.185.143.46]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-286-alMELXGoPEi5bD9NMSgbRw-1; Sat, 06 Jun 2020 10:58:10 -0400
X-MC-Unique: alMELXGoPEi5bD9NMSgbRw-1
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
	by gateway31.websitewelcome.com (Postfix) with ESMTP id D652F43645
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 09:34:17 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id hZtpjTEBJXVkQhZtpjTr7m; Sat, 06 Jun 2020 09:34:17 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-96-107.inter.net.il ([84.229.96.107]:59920
	helo=telaviv1.shlomifish.org)
	by gator4065.hostgator.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <shlomif@shlomifish.org>) id 1jhZtp-00393B-FK
	for blinux-list@redhat.com; Sat, 06 Jun 2020 09:34:17 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id EA5FA2612EA
	for <blinux-list@redhat.com>; Sat,  6 Jun 2020 17:34:14 +0300 (IDT)
Date: Sat, 6 Jun 2020 17:34:14 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: who of us would be so advanced C programmer that would try to
	increase the quality of this Android Shmem library?
Message-ID: <20200606173414.14ee58ee@telaviv1.shlomifish.org>
In-Reply-To: <0C1985EFC22E4AB5AB0B184483A8B522@DESKTOPN6LG1HQ>
References: <19fe1f20-9bc7-9fc7-6702-a34021279d54@gmail.com>
	<AD0DEA51-255F-48CB-A427-C861671A73CC@gmail.com>
	<016a01d63b65$ff8d8a10$fea89e30$@GMAIL.COM>
	<71f8bb6d-dbfe-508d-365e-d248e9eacf1e@gmail.com>
	<0C1985EFC22E4AB5AB0B184483A8B522@DESKTOPN6LG1HQ>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.96.107
X-Source-L: No
X-Exim-ID: 1jhZtp-00393B-FK
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-96-107.inter.net.il (telaviv1.shlomifish.org)
	[84.229.96.107]:59920
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 056EwIx3015564
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGkgTXIuL01zLiBBbm9ueW1vdXMsCgpPbiBTYXQsIDYgSnVuIDIwMjAgMTI6MTI6NTMgKzAyMDAK
TGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiA8YmxpbnV4LWxpc3RAcmVkaGF0LmNv
bT4gd3JvdGU6Cgo+IERlYXIgYWR2YW5jZWQgQyBhbmQgQysrIHByb2dyYW1tZXJzIGhlcmUuCgpX
aGF0IGRvZXMgeW91ciBwb3N0IGhhdmUgdG8gZG8gd2l0aCAiTGludXggZm9yIHRoZSBibGluZCI/
IEl0IGlzIGFsc28gaGFyZCB0bwp1bmRlcnN0YW5kIGR1ZSB0byB0aGUgcHJvbGlmZXJhdGlvbiBv
ZiBzcGVsbGluZyBhbmQgZ3JhbW1hciBlcnJvcnMuIEFsc28gbm90ZQp0aGF0IG1hbnkgc3Vic2Ny
aWJlcnMgaGVyZSBhcmUgcHJvYmFibHkgbm90IHRvbyB2ZXJzZWQgaW4gQyBhbmQvb3IgQysrOgoK
aHR0cDovL3NobG9taWZpc2hzd2lraS5icmFuY2hhYmxlLmNvbS9MaW5rc19hZ2FpbnN0X0MrKy8K
CkFueXdheSwgaG93IGNhbiB3ZSBoZWxwIHlvdT8gSXQncyBub3QgY2xlYXIgd2hhdCB5b3Ugd2lz
aCB0byBhY2hpZXZlIG9yIG9mZmVyLgoKPiBBZHJvaWQgZGV2aWNlcyBhcmUgbGlnaHQgdmVpZ2h0
LCBwb3J0YWJsZSwgY29uc3VtZSBsb3YgZW5lcmd5IHdoZW4gcG93ZXJpbmcKPiBieSB1c2luZyBB
QyBhZGFwdGVycy4gTW9kZXJuIDggY29yZSBDUFVTIGFyZSB2ZXJ5IHByb2Zlc3Npb25hbCBhbmQg
Y2FuIGJlCj4gdXNlZCBmb3IgbWFueSB0YXNrcy4gVGhhbmtzIHRvIFRlcm11eCBhbmQgUHJvb3Qs
IGl0IGlzIHBvc3NpYmxlIHRvIHNhZmVseQo+IHVzZSBtb3JlIGFuZCBtb3JlIExpbnV4IGRpc3Ry
aWJ1dGlvbnMuCj4gQnV0IHNvbWUgTGludXggYXBwcyBoYXZlIGJlZW4gY29kZWQgdGhhdCBpdCBj
YW4gb25seSB1c2Ugc2hhcmVkIG1lbW9yeS4gTWF0ZQo+IGRlc2t0b3AgaGF2ZSBiZWVuIGNvZGVk
IHRoYXQgc2hhcmVkIG1lbW9yeSBpcyBub3QgVGhlIG5lZWRlZCBjb25kaXRpb24gdG8KPiBydW4g
dGhpcyBkZXNrdG9wIGVudmlyb25tZW50LiBCdXQgc29tZSBkZXNrdG9wcyBvciBhcHBzIGhhdmUg
YmVlbiByZWFsbHkKPiBjb2RlZCBieSBUaGUgd2F5LCB0aGF0IHNoYXJlZCBtZW1vcnkgbXVzdCBi
ZSB1c2VkLiBJbiBvdGhlciBjYXNlcyBpdCB3aWxsCj4gbmV2ZXIgcnVuIGZvciB5b3UuCj4gCj4g
U29tZSBhZHZhbmNlZCBDIHByb2dyYW1tZXJzIGhhdmUgYmVlbiBzbyBwcm9mZXNzaW9uYWwgdGhh
dCB0aGV5IGhhdmUgZGVjaWRlZAo+IHRvIHdyaXRlIG5hdGl2ZSBDIGxpYnJhcmllcywgd2hpY2gg
YXJlIHdvcmtpbmcgYXMgQSBzaGFyZWQgbWVtb3J5IGVtdWxhdG9ycy4KPiBTdXJlLiBTaGFyZWQg
bWVtb3J5IHN1cHBvcnQsIHdoaWNoIGhoYXZlIGJlZW4gaW5jb3Jwb3JhdGVkIHRvIFRoZSBzdGFu
ZGFyZAo+IExpbnV4IGtlcm5lbCwgbm90IHRvIFRoZSBBbmVyb2lkIGtlcm5lbCBjYW4gbm90IGJl
IGZ1bGx5IHJlcGxhY2VkIGJ5IC5zbwo+IGxpYnJhcnksIHdoaWNoIHRyeSB0byBkbyBpdHMgYmVz
dCB0byBlbXVsYXRlIHNoYXJlZCBtZW1vcnkgY2FsbHMgb24gQW5kcm9pZAo+IGRldmljZXMgd2hp
bGUgcnVubmluZyBMaW51eCBkaXN0cm8gYnkgc3VpbmcgVGVybXV4IGFuZCBQcm9vdC4KPiBIZXJl
IGlzIG9ubHkgc2hhcmVkIGxpYnJhcnksIHdoaWNoIGlzIGxlZ2FsbHkgYXZhaWxhYmxlIGFzIG9w
ZW5zb3VyY2UuCj4gCj4gaHR0cHM6Ly9naXRodWIuY29tL3BlbHlhL2FuZHJvaWQtc2htZW0KPiAK
PiBJdCBoYXZlIGRlYnVnZ2luZyBlbmFibGVkIHNvIHdoZW4gc29tZSBhcHAgd2lsbCB0cnkgdG8g
dXNlIHN1cHBvcnRlZCBzaGFyZWQKPiBtZW1vcnkgY2FsbHMsIGl0IHdpbGwgZGlzcGxheSBpdHMg
d29yayBhY3Rpdml0eSByZXN1bHQgdG8gVGhlIHRlcm1pbmFsLgo+IAo+IEF0dGVudGlvbiEgVGhp
cyBwcm9qZWN0IGlzIHJlYWxseSBhZHZhbmNlZCwgaXQgaXMgbm90IGEgdG95IGFuZCBpZiB5b3Ug
d2lsbAo+IG5vdCBkZWVwbHkgdW5kZXJzdGFuZCBDIGxhbmd1YWdlIHRvIGV4dGXFoW5kIGl0IG9y
IGltcHJvdmUgaXQsIHlvdSBjYW4gZ2V0Cj4gdW5leHBlY3RhYmxlIHJlc3VsdHMuCj4gSSBob3Bl
LCB0aGF0IHNvbWVib2R5IGFkdmFuY2VkIHdpbGwgbG9vayBhdCBUaGUgY29kZS4KPiBYMTF2bmMg
aXMgbm90IHN1cHBvcnRlZCBpZiBydW4gd2l0aG91dCAtLW5vc2htIG9wdGlvbiwgaXQgdXNlcyBt
YXkgYmUKPiB1bnN1cHBvcnRlZCBzaGFyZWQgbWVtb3J5IGZ1bmN0aW9uIG9yIGl0IHVzZXMgdG9v
IG1hbnkgc2hhcmVkIG1lbW9yeQo+IG1hbmlwdWxhdGlvbnMgYXQgQSB0aW1lLgo+IAo+IAo+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxp
c3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJl
ZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCgotLSAKClNobG9taSBG
aXNoICAgICAgIGh0dHBzOi8vd3d3LnNobG9taWZpc2gub3JnLwpodHRwczovL2lzLmdkL2k1ZU1R
ZCAtIEVtbWEgV2F0c29u4oCZcyBJbnRlcnZpZXcgZm9yIGEgU29mdHdhcmUgRGV2IEpvYgoKQ2h1
Y2sgTm9ycmlzIHdyb3RlIHNvbHV0aW9ucyBmb3IgYWxsIHRoZSBwcm9ibGVtcyBvZiBQcm9qZWN0
IEV1bGVyLCBhbmQgdGhleQphbGwgcnVuIGluIHVuZGVyIGEgbWludXRlLiBJbiB0b3RhbC4KICAg
IOKAlCBodHRwczovL3d3dy5zaGxvbWlmaXNoLm9yZy9odW1vdXIvYml0cy9mYWN0cy9DaHVjay1O
b3JyaXMvCgpQbGVhc2UgcmVwbHkgdG8gbGlzdCBpZiBpdCdzIGEgbWFpbGluZyBsaXN0IHBvc3Qg
LSBodHRwczovL3NobG9tLmluL3JlcGx5IC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RA
cmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4
LWxpc3Q=

