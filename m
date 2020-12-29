Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 5F90E2E73F7
	for <lists+blinux-list@lfdr.de>; Tue, 29 Dec 2020 21:44:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609274672;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=DRiJZv9w5DQy03cog9NFEz0URaLEKy5ZxMjV/Y86LsU=;
	b=A+aFTkO2CFBD44cHqa6W6L9WggvzH6NF5DpCr1Mh0R84KkUm6lNEfhVt7H2oPbqY4zI97G
	05M+NpoDggnD2egs9K6cGcMzIBI3im+l3VQBPGj/E6B2Vg/zXACJ+nAZ0ze+lNI18GuHW+
	LmNwDNgUPurvFVpcATtP2K0Yfr744yE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-459-gI7SEB0MNSyzLTc5W_hVLQ-1; Tue, 29 Dec 2020 15:44:30 -0500
X-MC-Unique: gI7SEB0MNSyzLTc5W_hVLQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 474BC801817;
	Tue, 29 Dec 2020 20:44:22 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id A732060BE5;
	Tue, 29 Dec 2020 20:44:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 9ACF74BB7B;
	Tue, 29 Dec 2020 20:43:59 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com
	[10.11.54.6])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0BTKhnOO009117 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 29 Dec 2020 15:43:49 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0B3002166B29; Tue, 29 Dec 2020 20:43:49 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 056552166B28
	for <blinux-list@redhat.com>; Tue, 29 Dec 2020 20:43:46 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 946878007D9
	for <blinux-list@redhat.com>; Tue, 29 Dec 2020 20:43:46 +0000 (UTC)
Received: from gateway31.websitewelcome.com (gateway31.websitewelcome.com
	[192.185.144.218]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-52-gpG-1StAOqKE6gdC_3_jLA-1; Tue, 29 Dec 2020 15:43:43 -0500
X-MC-Unique: gpG-1StAOqKE6gdC_3_jLA-1
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
	by gateway31.websitewelcome.com (Postfix) with ESMTP id 179C58EC7
	for <blinux-list@redhat.com>; Tue, 29 Dec 2020 13:54:46 -0600 (CST)
Received: from box2167.bluehost.com ([50.87.253.68]) by cmsmtp with SMTP
	id uL4vk3BAciQiZuL4vklJWI; Tue, 29 Dec 2020 13:54:46 -0600
X-Authority-Reason: nr=8
Received: from [104.60.194.40] (port=36834 helo=[10.0.0.22])
	by box2167.bluehost.com with esmtpsa (TLS1.2) tls
	TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256 (Exim 4.93)
	(envelope-from <kelly@kellford.com>) id 1kuL4v-002EVA-Ik
	for blinux-list@redhat.com; Tue, 29 Dec 2020 12:54:45 -0700
Subject: No Monitor Environment
To: blinux-list@redhat.com
References: <02c701d6da1f$fdf1c550$f9d54ff0$@kellford.com>
	<alpine.NEB.2.23.451.2012241448310.21263@panix1.panix.com>
Message-ID: <9c34ebe2-14fa-d2b1-360b-e5a8e1205347@kellford.com>
Date: Tue, 29 Dec 2020 13:54:44 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <alpine.NEB.2.23.451.2012241448310.21263@panix1.panix.com>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - box2167.bluehost.com
X-AntiAbuse: Original Domain - redhat.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kellford.com
X-BWhitelist: no
X-Source-IP: 104.60.194.40
X-Source-L: No
X-Exim-ID: 1kuL4v-002EVA-Ik
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([10.0.0.22]) [104.60.194.40]:36834
X-Source-Auth: kelly@kellford.com
X-Email-Count: 1
X-Source-Cap: a2VsbHlmb3I7a2VsbHlmb3I7Ym94MjE2Ny5ibHVlaG9zdC5jb20=
X-Local-Domain: yes
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.6
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 0BTKhnOO009117
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SGksCgoKVGhhbmtzIGZvciB0aGUgYW5zd2VycyBvbiBteSBhdWRpby7CoCBJJ3ZlIHJlc29sdmVk
IHRoYXQgYnV0IGhhdmUgYW5vdGhlciAKcXVlc3Rpb24uCgoKVHlwaWNhbGx5IEkgZG8gbm90IGhh
dmUgYSBtb25pdG9yIGF0dGFjaGVkIHRvIG15IGNvbXB1dGVyLsKgIEknbSBmaW5kaW5nIAp0aG91
Z2ggdGhhdCBpZiBJIGRpc2Nvbm5lY3QgdGhlIG1vbml0b3Igd2hlcmUgSSd2ZSBpbnN0YWxsZWQg
TGludXgsIG5vIApwcm9ncmFtcyB3aWxsIGxhdW5jaC7CoCBJIGNhbiBicmluZyB1cCB0aGUgc3Rh
cnQgZXhwZXJpZW5jZSBhbmQgc3VjaCBidXQgCnByb2dyYW1zIHdvbid0IGxhdW5jaC7CoCBBcyBz
b29uIGFzIEkgY29ubmVjdCB0aGUgbW9uaXRvciwgZXZlbiBpZiBpdCBpcyAKb2ZmLCB0aGVuIGFs
bCB3b3JrcyBjb3JyZWN0bHkuCgoKSSBpbnN0YWxsZWQgVWJ1bnR1IDIuwqAgSXMgdGhlcmUgYSBz
ZXR0aW5nIG9yIHNvbWV0aGluZyBlbHNlIG9idmlvdXMgSSdtIAptaXNzaW5nIGhlcmUuwqAgSSdk
IHByZWZlciBub3QgdG8gaGF2ZSB0byBoYXZlIHRoZSBtb25pdG9yIGNvbm5lY3RlZCB0byAKdGhl
IGNvbXB1dGVyLCBsYXJnZWx5IGJlY2F1c2Ugb2YgaG93IG15IGVudmlyb25tZW50IGlzIGNvbmZp
Z3VyZWQgd2hlcmUgCkkgaGF2ZSBubyBtb25pdG9yIGFyb3VuZCBieSBkZWZhdWx0LgoKCktlbGx5
CgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGlu
dXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5y
ZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

