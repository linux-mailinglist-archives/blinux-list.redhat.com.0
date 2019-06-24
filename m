Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mx1.redhat.com (mx1.redhat.com [209.132.183.28])
	by mail.lfdr.de (Postfix) with ESMTPS id DD53B51A59
	for <lists+blinux-list@lfdr.de>; Mon, 24 Jun 2019 20:17:15 +0200 (CEST)
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id D99E230833A8;
	Mon, 24 Jun 2019 18:17:04 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A5E611001B00;
	Mon, 24 Jun 2019 18:16:55 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id EF7591806B18;
	Mon, 24 Jun 2019 18:16:50 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
	[10.5.11.13])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id x5OIGP1w005710 for <blinux-list@listman.util.phx.redhat.com>;
	Mon, 24 Jun 2019 14:16:25 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 2601A608C2; Mon, 24 Jun 2019 18:16:25 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx1.redhat.com (ext-mx01.extmail.prod.ext.phx2.redhat.com
	[10.5.110.25])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F9776085B
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 18:16:22 +0000 (UTC)
Received: from gateway32.websitewelcome.com (gateway32.websitewelcome.com
	[192.185.145.171])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mx1.redhat.com (Postfix) with ESMTPS id 914E481DEB
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 18:16:09 +0000 (UTC)
Received: from cm11.websitewelcome.com (cm11.websitewelcome.com [100.42.49.5])
	by gateway32.websitewelcome.com (Postfix) with ESMTP id 2F784FE0B
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 13:16:01 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id fTVZh9EgZdnCefTVZhjEWB; Mon, 24 Jun 2019 13:16:01 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-96-96.inter.net.il ([84.229.96.96]:38686
	helo=telaviv1.shlomifish.org) by gator4065.hostgator.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <shlomif@shlomifish.org>) id 1hfTVY-001KUq-QV
	for blinux-list@redhat.com; Mon, 24 Jun 2019 13:16:01 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id B918C260040
	for <blinux-list@redhat.com>; Mon, 24 Jun 2019 21:15:57 +0300 (IDT)
Date: Mon, 24 Jun 2019 21:15:57 +0300
To: blinux-list@redhat.com
Subject: Re: Some basic Pulseaudio Questions
Message-ID: <20190624211557.172127a0@telaviv1.shlomifish.org>
In-Reply-To: <E1hfScw-0000I3-8S@wb5agz>
References: <E1hfScw-0000I3-8S@wb5agz>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.96.96
X-Source-L: No
X-Exim-ID: 1hfTVY-001KUq-QV
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-96-96.inter.net.il (telaviv1.shlomifish.org)
	[84.229.96.96]:38686
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Greylist: Sender passed SPF test, Sender IP whitelisted by DNSRBL, ACL 216
	matched, not delayed by milter-greylist-4.5.16 (mx1.redhat.com
	[10.5.110.25]); Mon, 24 Jun 2019 18:16:09 +0000 (UTC)
X-Greylist: inspected by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.25]);
	Mon, 24 Jun 2019 18:16:09 +0000 (UTC) for IP:'192.185.145.171'
	DOMAIN:'gateway32.websitewelcome.com'
	HELO:'gateway32.websitewelcome.com'
	FROM:'shlomif@shlomifish.org' RCPT:''
X-RedHat-Spam-Score: 0.001 (SPF_NONE) 192.185.145.171
	gateway32.websitewelcome.com 192.185.145.171
	gateway32.websitewelcome.com <shlomif@shlomifish.org>
X-Scanned-By: MIMEDefang 2.83 on 10.5.110.25
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id x5OIGP1w005710
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: blinux-list-bounces@redhat.com
Errors-To: blinux-list-bounces@redhat.com
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (mx1.redhat.com [10.5.110.44]); Mon, 24 Jun 2019 18:17:14 +0000 (UTC)

T24gTW9uLCAyNCBKdW4gMjAxOSAxMjoxOTozMyAtMDUwMApMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCj4gCUlzIGl0IGV2
ZW4gd29ydGh3aGlsZSB0byBnZXQgcHVsc2VhdWRpbyB0byBydW4gb24gYQo+IGRlYmlhbiBzeXN0
ZW0gd2l0aG91dCBhIHggZGlzcGxheT8KPiAKPiAJSSB3b3VsZCBsaWtlIHRvIGhhdmUgc3BlYWt1
cCBhbmQgbXBsYXllciBub3QgZmlnaHQgb3Zlcgo+IHRoZSBzYW1lIHNvdW5kIGNhcmQuCj4gCgpO
b3RlIHRoYXQgQUxTQSBjYW4gZG8gbXVsdGlwbGV4ZWQgc291bmQgdG9vLiBNb3Jlb3ZlciwgcGxl
YXNlIHRyeQpodHRwczovL21wdi5pby8gaW5zdGVhZCBvZiBtcGxheWVyLgoKPiBfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+IEJsaW51eC1saXN0QHJlZGhhdC5jb20KPiBodHRwczovL3d3dy5yZWRoYXQuY29t
L21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3QKCgoKLS0gCi0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tClNobG9taSBGaXNo
ICAgICAgIGh0dHA6Ly93d3cuc2hsb21pZmlzaC5vcmcvCmh0dHA6Ly9pcy5nZC9LTnZjelogLSBU
aGUgRlNGIEFubm91bmNlcyBOZXcgVmVyc2lvbnMgb2YgdGhlIEdQTAoKSSBkb27igJl0IGJlbGll
dmUgaW4gQXN0cm9sb2d5LCBiZWNhdXNlIEnigJltIGEgVGF1cnVzLCBhbmQgVGF1cmkgbmV2ZXIg
YmVsaWV2ZSBpbgpBc3Ryb2xvZ3kuICAgICAgICAgICDigJQgU291cmNlIHVua25vd24KClBsZWFz
ZSByZXBseSB0byBsaXN0IGlmIGl0J3MgYSBtYWlsaW5nIGxpc3QgcG9zdCAtIGh0dHA6Ly9zaGxv
bS5pbi9yZXBseSAuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=
