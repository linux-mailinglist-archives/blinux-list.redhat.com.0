Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [63.128.21.74])
	by mail.lfdr.de (Postfix) with ESMTP id 78A2F19578B
	for <lists+blinux-list@lfdr.de>; Fri, 27 Mar 2020 13:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1585313684;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=grAOGNBeuIqlArMHTo5uvVKHwhZey0x7SjOpwEV4nzQ=;
	b=gdqdQO5xz2tfZrxihMB+jiExvX0w2nvkMcX1I3dSxv2I7UdGt/I+MS5sidihA/PT9GAluP
	WN1nAxuE7n0+eZXcG1mPW90Gke4dXK/Zp2l2UekN11NYRKt83GaqZMoMhTGJvv9CykP193
	IPwauGlrq1qXlykb/PccgkErAP2Vm8o=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-348-2JfBkqjiMEGeuAks4xo_XA-1; Fri, 27 Mar 2020 08:54:21 -0400
X-MC-Unique: 2JfBkqjiMEGeuAks4xo_XA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CFC89149C0;
	Fri, 27 Mar 2020 12:54:17 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id E07EE5C1C3;
	Fri, 27 Mar 2020 12:54:16 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 885BE18089CE;
	Fri, 27 Mar 2020 12:54:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02RCsAi1004764 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 27 Mar 2020 08:54:10 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 464D81007274; Fri, 27 Mar 2020 12:54:10 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 4231D1007278
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 12:54:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 55A7E8F784F
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 12:54:08 +0000 (UTC)
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com
	[192.185.69.18]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-316-ds8g9sMsNb-WjDZxXv89fg-1; Fri, 27 Mar 2020 08:54:05 -0400
X-MC-Unique: ds8g9sMsNb-WjDZxXv89fg-1
Received: from cm13.websitewelcome.com (cm13.websitewelcome.com [100.42.49.6])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id F149D400C6925
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 06:38:11 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id HoUujHSqbVQh0HoUujV7a2; Fri, 27 Mar 2020 07:54:04 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-97-230.inter.net.il ([84.229.97.230]:41054
	helo=telaviv1.shlomifish.org) by gator4065.hostgator.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <shlomif@shlomifish.org>) id 1jHoUt-002rAG-Qv
	for blinux-list@redhat.com; Fri, 27 Mar 2020 07:54:04 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id 9A65A2610F7
	for <blinux-list@redhat.com>; Fri, 27 Mar 2020 15:53:58 +0300 (IDT)
Date: Fri, 27 Mar 2020 15:53:58 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: new TalkingArch release
Message-ID: <20200327155358.6b90a1b3@telaviv1.shlomifish.org>
In-Reply-To: <9a8b1e30-4f6b-5c9b-dc0f-3e9c9d70023a@gmail.com>
References: <9a8b1e30-4f6b-5c9b-dc0f-3e9c9d70023a@gmail.com>
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4065.hostgator.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - shlomifish.org
X-BWhitelist: no
X-Source-IP: 84.229.97.230
X-Source-L: No
X-Exim-ID: 1jHoUt-002rAG-Qv
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-97-230.inter.net.il (telaviv1.shlomifish.org)
	[84.229.97.230]:41054
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02RCsAi1004764
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gRnJpLCAyNyBNYXIgMjAyMCAxNTozMzo1NyArMDMwMApMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCj4gaGVsbG8uIGkg
YW0gYW5ub3VuY2luZyBhIG5ldyBUYWxraW5nQXJjaCByZWxlYXNlLgo+IHlvdSBjYW4gZ2V0IGl0
IGF0IHRhbGtpbmdhcmNoLmluZm8gPGh0dHBzOi8vdGFsa2luZ2FyY2guaW5mbz4KPiBmZWVsIGZy
ZWUgdG8gdXNlLCB0ZXN0IGFuZCB3cml0ZSBhYm91dCBidWdzIG9yIGZlYXR1cmUgcmVxdWVzdHMu
Cj4gCj4gU2luY2VyZWx5LCBBbGV4YW5kZXIKPiAKClRoYW5rcyBmb3IgeW91ciB3b3JrLCBBbGV4
YW5kZXIhCgpSZWdhcmRzLAoKCVNobG9taQo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCj4gQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxp
c3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9i
bGludXgtbGlzdAo+IAoKCgotLSAKClNobG9taSBGaXNoICAgICAgIGh0dHBzOi8vd3d3LnNobG9t
aWZpc2gub3JnLwpodHRwczovL3d3dy5zaGxvbWlmaXNoLm9yZy9odW1vdXIvU3VtbWVyc2Nob29s
LWF0LXRoZS1OU0EvCgpGb3IgZXZlcnkgQSwgQ2h1Y2sgTm9ycmlzIGlzIGJvdGggQSBhbmQgbm90
LUEuCkNodWNrIE5vcnJpcyBpcyBmcmVha2luZyBldmVyeXRoaW5nLgogICAg4oCUIGh0dHA6Ly93
d3cuc2hsb21pZmlzaC5vcmcvaHVtb3VyL2JpdHMvZmFjdHMvQ2h1Y2stTm9ycmlzLwoKUGxlYXNl
IHJlcGx5IHRvIGxpc3QgaWYgaXQncyBhIG1haWxpbmcgbGlzdCBwb3N0IC0gaHR0cDovL3NobG9t
LmluL3JlcGx5IC4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRw
czovL3d3dy5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

