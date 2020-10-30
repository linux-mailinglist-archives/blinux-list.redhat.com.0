Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 893C829FE2F
	for <lists+blinux-list@lfdr.de>; Fri, 30 Oct 2020 08:03:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604041421;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=k7phIeCB21HyeH8tRvBU72beciD6A+qUtfxNIl85/o0=;
	b=ImJtMHmeZt3zQSOYfqxSrn7V3U16m9LfwBkkznct0RCfIm0CeKimYWTL+s7p+Ad7J5y0iC
	gasLXDGat4xM/LHT9l545Qkw+melRENQbYOr+ooSCcEiYkIq4WKzTp1wmocbPum46lpJT0
	5uMQ2V1c3jTXxKLPvz8czUNTp5qgGWU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-166-dEqlJGL7NF60xbS9IijmYA-1; Fri, 30 Oct 2020 03:03:39 -0400
X-MC-Unique: dEqlJGL7NF60xbS9IijmYA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E62FB8014C1;
	Fri, 30 Oct 2020 07:03:33 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCC216EF62;
	Fri, 30 Oct 2020 07:03:32 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id BC77A5810F;
	Fri, 30 Oct 2020 07:03:30 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 09U72w5d012315 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 30 Oct 2020 03:02:58 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 68D72200A7DC; Fri, 30 Oct 2020 07:02:58 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6353F201EB53
	for <blinux-list@redhat.com>; Fri, 30 Oct 2020 07:02:56 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 128F21021F81
	for <blinux-list@redhat.com>; Fri, 30 Oct 2020 07:02:56 +0000 (UTC)
Received: from gateway21.websitewelcome.com (gateway21.websitewelcome.com
	[192.185.45.175]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-84-oU1qBbcXPlKTChBycnGwiw-1; Fri, 30 Oct 2020 03:02:53 -0400
X-MC-Unique: oU1qBbcXPlKTChBycnGwiw-1
Received: from cm14.websitewelcome.com (cm14.websitewelcome.com [100.42.49.7])
	by gateway21.websitewelcome.com (Postfix) with ESMTP id 19502400D1260
	for <blinux-list@redhat.com>; Fri, 30 Oct 2020 01:37:55 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id YO2tkHl2Lfgo0YO2tkM25v; Fri, 30 Oct 2020 01:37:55 -0500
X-Authority-Reason: nr=8
Received: from 87.68.240.31.adsl.012.net.il ([87.68.240.31]:37656
	helo=telaviv1.shlomifish.org)
	by gator4065.hostgator.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.93)
	(envelope-from <shlomif@shlomifish.org>) id 1kYO2s-002dpz-Nl
	for blinux-list@redhat.com; Fri, 30 Oct 2020 01:37:54 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id 45E4B261085
	for <blinux-list@redhat.com>; Fri, 30 Oct 2020 08:37:52 +0200 (IST)
Date: Fri, 30 Oct 2020 08:37:51 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: something is wrong in make menuconfig
Message-ID: <20201030083751.76344feb@telaviv1.shlomifish.org>
In-Reply-To: <alpine.NEB.2.23.451.2010291701230.26879@panix1.panix.com>
References: <alpine.NEB.2.23.451.2010291701230.26879@panix1.panix.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 87.68.240.31
X-Source-L: No
X-Exim-ID: 1kYO2s-002dpz-Nl
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 87.68.240.31.adsl.012.net.il (telaviv1.shlomifish.org)
	[87.68.240.31]:37656
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
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
	lists01.pubmisc.prod.ext.phx2.redhat.com id 09U72w5d012315
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

SGksIE1yLi9Ncy4gQW5vbnltb3VzIQoKT24gVGh1LCAyOSBPY3QgMjAyMCAxNzowNjo1NCAtMDQw
MApMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQu
Y29tPiB3cm90ZToKCj4gVHJpZWQgYnVpbGRpbmcgYSBnZW50b28ga2VybmVsIEkndmUgdmVyaWZp
ZWQgYm9vdHMgYW5kIHRoZSBwcm9ibGVtIGlzIHRoZQo+IHNvdW5kIGNhcmQuICBObyBleHRlcm5h
bCBzcGVlY2ggc3ludGhlc2l6ZXIgYW5kIG5vIGJyYWlsbGUgZGlzcGxheSBzbyBuZWVkCj4gdG8g
dXNlIHNvdW5kIGNhcmQgZmFjaWxpdGllcy4gIEkgdGhpbmsgc3BlYWt1cCB3aWxsIHdvcmsgb25j
ZSBzb3VuZCBjYXJkCj4gaXMgc29ydGVkIG91dC4KPiBXaGF0IEkgd291bGQgbGlrZSB0byBrbm93
IGlzIEkgaG9wZSBsZXNzIGNvbXBsZXguICBJIGFtIHByb2JhYmx5IGdvaW5nIHRvCj4gbmVlZCB0
byBzaGFyZSBvdXRwdXQgb3ZlciBpcnNzaSBpbiAjZ2VudG9vIG9yICNnZW50b28tYWNjZXNzaWJp
bGl0eSBvbgo+IGZyZWVub2RlLiAgSG93IGlzIHRoYXQgZG9uZSB3aGVyZSBJIGhhdmUgYSBmaWxl
IG9uIG15IGVuZCBhbmQgcGVvcGxlIG9yIGEKPiBwZXJzb24gaW4gdGhlIGNoYXQgcm9vbSBuZWVk
cyB0byBsb29vayBhdCBpdCB1c2luZyBpcnNzaT8KCklmIHRoZSBmaWxlIGlzIHRleHQtYmFzZWQg
dGhlbiB1c2UgYSBwYXN0ZS1zaXRlIHNlcnZpY2Ugc3VjaCBhcwpodHRwczovL2YucGVybC5ib3Qv
IG9yIGh0dHBzOi8vcGFzdGUuZGViaWFuLm5ldC8gLSBhbHNvIHNlZSBteSBndWlkZSBoZXJlOgoK
KiBodHRwczovL2dpdGh1Yi5jb20vc2hsb21pZi9ob3ctdG8tc2hhcmUtY29kZS1vbmxpbmUKCk5v
dGUgdGhhdCB0aGVyZSBhcmUgbm9wYXN0ZSBhbmQgc2ltaWxhciBjb21tYW5kIGxpbmUgdG9vbHM6
Cmh0dHBzOi8vbWV0YWNwYW4ub3JnL3JlbGVhc2UvQXBwLU5vcGFzdGUgLgoKSFRILCAtLSBTaGxv
bWkKPiBJIG5ldmVyIHN1Y2Nlc3NmdWxseSBidWlsdCBhIGtlcm5lbCBiZWZvcmUgYW5kIG9ubHkg
Z290IHRoaXMgZmFyIGZvbGxvd2luZwo+IGluc3RydWN0aW9ucyBpbiB0aGUgb2ZmaWNpYWwgaGFu
ZGJvb2sgYW5kIEkgZ290IGhlbHAgZnJvbSBhbm90aGVyIHNwZWFrdXAKPiB1c2VyIHdobyB1c2Vz
IGdlbnRvbyBvbiB0aGUgc3BlYWt1cCBkZXRhaWxzLgo+IAo+IAo+IAo+IC0tIFVuaXRlZCBTdGF0
ZXMgaGFzIDYzMyBCaWxsaW9uYWlyZXMgd2l0aCBvbmx5IDEwIGRvaW5nIGFueSBhbm51YWwKPiBz
aWduaWZpY2FudCBnaXZpbmcuCj4gCj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBCbGludXgtbGlzdEBy
ZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51
eC1saXN0Cj4gCgoKCi0tIAoKU2hsb21pIEZpc2ggICAgICAgaHR0cHM6Ly93d3cuc2hsb21pZmlz
aC5vcmcvCmh0dHBzOi8vZ2l0aHViLmNvbS9zaGxvbWlmL3ZhbGlkYXRlLXlvdXItaHRtbCAtIFZh
bGlkYXRlIFlvdXIgSFRNTAoKVGhlIG51bWJlciBvZiBpdGVtcyBvbiBhbiBvcGVuIHNvdXJjZSBw
cm9qZWN04oCZcyB0b+KAkGRvIGxpc3QgYWx3YXlzIGdyb3dzIG9yCnJlbWFpbnMgY29uc3RhbnQu
CiAgICDigJQgaHR0cHM6Ly93d3cuc2hsb21pZmlzaC5vcmcvaHVtb3VyL2ZvcnR1bmVzL29zcF9y
dWxlcy5odG1sCgpQbGVhc2UgcmVwbHkgdG8gbGlzdCBpZiBpdCdzIGEgbWFpbGluZyBsaXN0IHBv
c3QgLSBodHRwczovL3NobG9tLmluL3JlcGx5IC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxp
bnV4LWxpc3Q=

