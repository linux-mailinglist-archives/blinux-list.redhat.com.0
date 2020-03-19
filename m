Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com [216.205.24.74])
	by mail.lfdr.de (Postfix) with ESMTP id 840EF18B39D
	for <lists+blinux-list@lfdr.de>; Thu, 19 Mar 2020 13:39:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584621559;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=UUvQiq6Xnvz1vcMQFcdE/VzwcPVYftLPl53l1d8ee6k=;
	b=iKhotC+14DMiEttu5WxOosKntPRxp9OTsiMNzWEx3kr6WBPsn5NGoAYCACAJb56BXkxCxR
	wp9LCdM2rqyT8JsrP+s3VBgaSKqA0cETCdhc3MwQTJTvNS1XYdhuXex8rQIkLl/rjthAWF
	mpd94ogtoMqueba5ce9hIhGV0H34gC0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-357-vlmi5wlzNS2UGiaab1w0Pg-1; Thu, 19 Mar 2020 08:39:17 -0400
X-MC-Unique: vlmi5wlzNS2UGiaab1w0Pg-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id C3D43800D5C;
	Thu, 19 Mar 2020 12:39:12 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 96FC860BF7;
	Thu, 19 Mar 2020 12:39:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id DD508182B00E;
	Thu, 19 Mar 2020 12:39:10 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 02JCd6BS005286 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 19 Mar 2020 08:39:06 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id E343A101784F; Thu, 19 Mar 2020 12:39:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DCEE910301A3
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 12:39:03 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9EE528F68F8
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 12:39:03 +0000 (UTC)
Received: from gateway34.websitewelcome.com (gateway34.websitewelcome.com
	[192.185.149.13]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-295-Ox1_W9ePMs-b6OgmKTGkLA-1; Thu, 19 Mar 2020 08:39:01 -0400
X-MC-Unique: Ox1_W9ePMs-b6OgmKTGkLA-1
Received: from cm16.websitewelcome.com (cm16.websitewelcome.com [100.42.49.19])
	by gateway34.websitewelcome.com (Postfix) with ESMTP id 445EB355AAB
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 07:39:00 -0500 (CDT)
Received: from gator4065.hostgator.com ([192.185.4.76]) by cmsmtp with SMTP
	id EuRwjL3hU8vkBEuRwjCA0j; Thu, 19 Mar 2020 07:39:00 -0500
X-Authority-Reason: nr=8
Received: from igld-84-229-97-230.inter.net.il ([84.229.97.230]:53404
	helo=telaviv1.shlomifish.org) by gator4065.hostgator.com with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92)
	(envelope-from <shlomif@shlomifish.org>) id 1jEuRv-000oLn-U2
	for blinux-list@redhat.com; Thu, 19 Mar 2020 07:39:00 -0500
Received: from telaviv1.shlomifish.org (telaviv1.shlomifish.org [127.0.0.1])
	by telaviv1.shlomifish.org (Postfix) with ESMTP id A2C2B2610E8
	for <blinux-list@redhat.com>; Thu, 19 Mar 2020 14:38:57 +0200 (IST)
Date: Thu, 19 Mar 2020 14:38:57 +0200
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: How to modify command in Gnome?
Message-ID: <20200319143857.6a03f7c2@telaviv1.shlomifish.org>
In-Reply-To: <707efaed-b9c7-249e-6d9a-096bba93f113@a-fs.cz>
References: <707efaed-b9c7-249e-6d9a-096bba93f113@a-fs.cz>
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
X-Exim-ID: 1jEuRv-000oLn-U2
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: igld-84-229-97-230.inter.net.il (telaviv1.shlomifish.org)
	[84.229.97.230]:53404
X-Source-Auth: shlomif@shlomifish.org
X-Email-Count: 1
X-Source-Cap: c2hsb21pZjtzaGxvbWlmO2dhdG9yNDA2NS5ob3N0Z2F0b3IuY29t
X-Local-Domain: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 02JCd6BS005286
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCAxOSBNYXIgMjAyMCAxMjo1MDo0NyArMDEwMApMaW51eCBmb3IgYmxpbmQgZ2VuZXJh
bCBkaXNjdXNzaW9uIDxibGludXgtbGlzdEByZWRoYXQuY29tPiB3cm90ZToKCj4gSGksCj4gCj4g
d2hlbiBJIHdhbnQgdG8gcnVuIENocm9tZSB3aXRoIGFjY2Vzc2liaWxpdHkgZW5hYmxlZCwgSSBt
dXN0IG9wZW4gd2l0aCAKPiBhbHQgKyBmMiBhbmQgdHlwZSB0aGlzOgo+IAo+IC91c3IvYmluL2dv
b2dsZS1jaHJvbWUtdW5zdGFibGUgLS1lbmFibGUtY2FyZXQtYnJvd3NpbmcgCj4gLS1mb3JjZS1y
ZW5kZXJlci1hY2Nlc3NpYmlsaXR5Cj4gCj4gaXMgaXQgcG9zc2libGUgdG8gbW9kaWZ5IHRvIHRo
aXMgY29tbWFuZCB1bmRlciBnbm9tZS1zaGVsbCBhcHAgcGFuZWw/IEluIAo+IE1hdGUsIE1vem8g
YXBwIGNhbiBiZSB1c2VkLgo+IAo+IFRoYW5rcywKPiAKPiBQYXZlbAo+IAoKSGkgUGF2ZWwsCgpw
ZXJoYXBzIHNlZSB0aGlzOgpodHRwczovL2Fza3VidW50dS5jb20vcXVlc3Rpb25zLzExMjE4Ni9o
b3ctZG8teW91LWNyZWF0ZS1hLWN1c3RvbS1hcHBsaWNhdGlvbi1sYXVuY2hlci1pbi1nbm9tZS1z
aGVsbAoKb3IgbWF5YmUgd3JpdGluZyBhIHNoZWxsIHNjcmlwdCB3aXRoIHRoYXQgY29tbWFuZCBh
bmQgcHV0dGluZyBpbiB0aGUgUEFUSCBhbmQKImNobW9kICt4IiBpdCB3aWxsIGRvIHRoZSB0cmlj
ayBmb3IgeW91IChzbyB5b3UgY2FuIHR5cGUgQWx0K2YyICJteXNjcmlwdCIKRW50ZXIuCgo+IAo+
IAo+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gQmxp
bnV4LWxpc3QgbWFpbGluZyBsaXN0Cj4gQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQo+IGh0dHBzOi8v
d3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+IAoKCgotLSAKClNo
bG9taSBGaXNoICAgICAgIGh0dHBzOi8vd3d3LnNobG9taWZpc2gub3JnLwpCZWdpbm5lcnMgU2l0
ZSBmb3IgdGhlIFZpbSB0ZXh0IGVkaXRvciAtIGh0dHA6Ly92aW0uYmVnaW4tc2l0ZS5vcmcvCgpD
aHVjayBOb3JyaXPigJlzIHdvb2RjaHVjayBjYW4gY2h1Y2sgd29vZC4KICAgIOKAlCBodHRwOi8v
d3d3LnNobG9taWZpc2gub3JnL2h1bW91ci9iaXRzL2ZhY3RzL0NodWNrLU5vcnJpcy8KClBsZWFz
ZSByZXBseSB0byBsaXN0IGlmIGl0J3MgYSBtYWlsaW5nIGxpc3QgcG9zdCAtIGh0dHA6Ly9zaGxv
bS5pbi9yZXBseSAuCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0
cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1saXN0

