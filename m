Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id EE5B74DE148
	for <lists+blinux-list@lfdr.de>; Fri, 18 Mar 2022 19:45:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1647629151;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=c8xeby5/2+klLLtGRmweTho7d/MNjoQf4TGLNntSDa8=;
	b=H0Y8Q3nIXh7X149KnlSy8xIBtPggRcKec/eEYSyfDyZhmtXZE9dhO6L0305lZhn5DfSDDs
	toY5YThVDLGGYvO2l0rlDH/D8ejMWkiO75eHH014XGgXM2cmSC+cjhg/gCW2gs9MYp0BAK
	c8hI2pRQ8JcIof/0rnnLNMoEZpxKVM0=
Received: from mimecast-mx02.redhat.com (mx3-rdu2.redhat.com
 [66.187.233.73]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-620-5ABIS6HRMIWMAOJkpyPm2g-1; Fri, 18 Mar 2022 14:45:48 -0400
X-MC-Unique: 5ABIS6HRMIWMAOJkpyPm2g-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com [10.11.54.3])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D33C3801ED8;
	Fri, 18 Mar 2022 18:45:46 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com [10.30.29.100])
	by smtp.corp.redhat.com (Postfix) with ESMTP id 74C851004037;
	Fri, 18 Mar 2022 18:45:43 +0000 (UTC)
Received: from mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (localhost [IPv6:::1])
	by mm-prod-listman-01.mail-001.prod.us-east-1.aws.redhat.com (Postfix) with ESMTP id C8C17194037D;
	Fri, 18 Mar 2022 18:45:42 +0000 (UTC)
Delivered-To: blinux-list@listman.corp.redhat.com
Delivered-To: blinux-list@redhat.com
Subject: Re: OT: alexandria.org
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <mailman.2881.1647623735.111207.blinux-list@redhat.com>
 <mailman.2947.1647624813.111203.blinux-list@redhat.com>
 <mailman.2978.1647627242.111208.blinux-list@redhat.com>
Date: Fri, 18 Mar 2022 18:45:34 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Firefox/68.0 SeaMonkey/2.53.11
MIME-Version: 1.0
In-Reply-To: <mailman.2978.1647627242.111208.blinux-list@redhat.com>
Message-ID: <mailman.3015.1647629141.111206.blinux-list@redhat.com>
From: Linux for blind general discussion <blinux-list@redhat.com>
X-BeenThere: blinux-list@redhat.com
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Linux for blind general discussion <blinux-list.redhat.com>
List-Unsubscribe: <https://listman.redhat.com/mailman/options/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=unsubscribe>
List-Archive: <http://listman.redhat.com/archives/blinux-list/>
List-Post: <mailto:blinux-list@redhat.com>
List-Help: <mailto:blinux-list-request@redhat.com?subject=help>
List-Subscribe: <https://listman.redhat.com/mailman/listinfo/blinux-list>,
 <mailto:blinux-list-request@redhat.com?subject=subscribe>
Reply-To: blinux-list@redhat.com
Errors-To: blinux-list-bounces@redhat.com
Sender: "Blinux-list" <blinux-list-bounces@redhat.com>
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

SSdsbCB0cnkgaXQgb3V0LCBidXQgc2xpZ2h0bHkgT1QgdGhhdCBJIGNhbid0IGV2ZXIgc2VlbSB0
byBnZXQgbmV3IApyZXN1bHRzIG9uIERERy4gSWYgdGhpcyB0dXJucyBvdXQgYXMgZ29vZCBhcyBE
REcgSSBjb3VsZCBkZWZpbml0ZWx5IHVzZSBpdAoKTGludXggZm9yIGJsaW5kIGdlbmVyYWwgZGlz
Y3Vzc2lvbiB3cm90ZToKPiDCoE9uZSBkcmF3YmFjayBzZWVtcyB0byBiZSB0aGF0IGFsdC1sZWZ0
LWFycm93IGRvZXNuJ3QgYmFjayBtZSBvdXQgb2YgYSAKPiBzZWFyY2ggcmVzdWx0IGFzIGl0IGRv
ZXMgdXNpbmcgRHVja2R1Y2tnby7CoCBTb21ldGltZXMsIGNvbnRyb2wtdyB3b3JrcyAKPiBpbiBz
dWNoIGNhc2VzLCBidXQgaW4gdGhlc2UgaW5zdGFuY2VzIGl0IGJyb3VnaHQgbWUgYWxsIHRoZSB3
YXkgYmFjayAKPiB0byB0aGUgZGVza3RvcC4KPgo+Cj4gVHJ5IGhvbGRpbmcgdGhlIHNoaWZ0IGtl
eSB3aGlsZSB5b3UgcHJlc3MgdGhlIGVudGVyIGtleSB0byBhY3RpdmF0ZSBhIAo+IHJlc3VsdCBs
aW5rLiBUaGlzIHNob3VsZCBvcGVuIGl0IGluIGEgbmV3IHdpbmRvdywgc28gdGhhdCBjb250cm9s
K3cgCj4gd2lsbCB0YWtlIHlvdSBiYWNrIHRvIHRoZSByZXN1bHQgcGFnZSBpbnN0ZWFkIG9mIHRo
ZSBkZXNrdG9wLiBIb3BlIAo+IHRoaXMgaGVscHMuCj4KPiB+S3lsZQo+Cj4gX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKPiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3QgbWFpbGluZyBsaXN0CkJsaW51eC1s
aXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhhdC5jb20vbWFpbG1hbi9saXN0aW5m
by9ibGludXgtbGlzdAo=

