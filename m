Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 24D4D494DEB
	for <lists+blinux-list@lfdr.de>; Thu, 20 Jan 2022 13:29:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642681763;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=f5PRqmJ47s0dJFXL5GAhHox9obM1uIqKQI8Hoj4a9KI=;
	b=W94Jm1XEthmCJAHoXQvuKV67A+SLQPKpm2p9b1cg0MC3EmcJCaCGTrjmu30HOVeJEKSKpA
	1PmmwSnRosiOUTQg4/Nd0zKzY3pH3gwWcDcJAC9s8lv0CWNGw8MwRjmb6D73TyYpU0Gw3X
	OHaXENHN0uc/FVRpD4NUelQA1SxVscI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-278-dDKkW4i1MqSP6kY99N92qQ-1; Thu, 20 Jan 2022 07:29:19 -0500
X-MC-Unique: dDKkW4i1MqSP6kY99N92qQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 35D6C192D78A;
	Thu, 20 Jan 2022 12:29:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF4FE7AB64;
	Thu, 20 Jan 2022 12:29:12 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 971F24CA93;
	Thu, 20 Jan 2022 12:29:11 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx10.intmail.prod.int.rdu2.redhat.com
	[10.11.54.10])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20KCShBK000596 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 20 Jan 2022 07:28:43 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 0A1E0401E92; Thu, 20 Jan 2022 12:28:43 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 060BF401474
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 12:28:43 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E0631811E76
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 12:28:42 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-166-Q6KsRR-fMkSceWugBFJBaQ-1; Thu, 20 Jan 2022 07:28:41 -0500
X-MC-Unique: Q6KsRR-fMkSceWugBFJBaQ-1
Received: by mail-lf1-f44.google.com with SMTP id m3so21244697lfu.0
	for <blinux-list@redhat.com>; Thu, 20 Jan 2022 04:28:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=coW9LMJskwBiB4Y4lQ5l8xuUVxh83DXCBg2+Gwe8od8=;
	b=u/1Z01/dp1Ah9A1NZWP92N/yhL3TVG1CwXX0JiwWCUYMA1wwBfY4U4yS7K9ZfQ2CF1
	T7GCH2LdOi2frXnI5W4td/bezcDqsSO+tiZS/VA/QJPQijF/B23YiWjO2qagp6ZrDG5l
	ZmTrxI5qZ5kIdtPB4Rt1ZDjfIETxIvWYMoThj6TP0DHMy+Bbkpo64k3AKHLzGvSOx0D0
	GSeMfpKNqyJ+CetiW4qu11jKsTcfRYQz+Q1rRZ4uPM1h9rBo3JzCCPaUAzMjoV8OqQO0
	LRIj7w/zKMXd2FxP+9R4nYqQobozCnjZjapw8yS13jTJ+hq0J8ZxpR04738ka86s4WjB
	Ylpw==
X-Gm-Message-State: AOAM533YrO9RZaom8D2cy3EGFztgaCWn0hA+u5sXRdeepiU83DVpaxE3
	1/OmBMhb/mTpt4FQgA4rMLgujbXavmI=
X-Google-Smtp-Source: ABdhPJwzCPhaXohrmEB8N8neass4ZR23YgtkeGuzKmZ/QdDYSrEVfqtc/PibRNfEoHyR4M8sVndiYQ==
X-Received: by 2002:a05:651c:329:: with SMTP id
	b9mr4691768ljp.518.1642681719146; 
	Thu, 20 Jan 2022 04:28:39 -0800 (PST)
Received: from localhost ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id 134sm277941ljj.1.2022.01.20.04.28.38
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Thu, 20 Jan 2022 04:28:38 -0800 (PST)
Date: Thu, 20 Jan 2022 15:28:37 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: Before I install Arch on bare metal...few questions
Message-ID: <20220120122837.ipmq2bz3lp227tmg@alex-pc>
References: <4ab924de-d686-a301-1ea3-e38214aba35e@gmail.com>
MIME-Version: 1.0
In-Reply-To: <4ab924de-d686-a301-1ea3-e38214aba35e@gmail.com>
User-Agent: NeoMutt/20211029
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.10
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gVGh1LCBKYW4gMjAsIDIwMjIgYXQgMTI6MTI6NTRBTSArMDAwMCwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBTbywgYXMgaXQgc2F5cy4gSSB2ZXJ5IG11Y2gg
bGlrZSBteSBBcmNoIFZNLgo+Cj4gQW5kIEkndmUgZG9uZSBhIHRvbiBvZiBpbnN0YWxscyBvbiBh
IHFlbXUgVk0sIHRob3VnaCBJJ20gbm93IHRoaW5raW5nIG9mCj4gc3dpdGNoaW5nIHRvIGJhcmUg
bWV0YWxzbyBJIGNhbiB0d2VhayBteSBzeXN0ZW0gaG93IEkgd2FudC4KPgo+Cj4gU28uLi4uYmVm
b3JlIEkgZG8gdGhpcy4KPgo+IDEuIEknbSB3b3JyaWVkIHNvbWV0aGluZydsbCBnbyB3cm9uZyBp
biB0aGUgYXJjaGluc3RhbGwgc2NyaXB0LCBvciB0aGUKPiBtYW51YWwgaW5zdGFsbCBhbmQgbnVr
ZSBteSAoY3VycmVudGx5IHdvcmtpbmcpIHN5c3RlbQoKaWYgeW91IGFyZSBjYXJlZnVsIHdoZW4g
cGFydGl0aW9uaW5nIHRoZSBkaXNrLCB0aGVuIHRoaXMgd2lsbCBub3QgaGFwcGVuLgoKPiAyLiBX
aWxsIG15IFVTQiBoZWFkcGhvbmVzIGJlIGNvbm5lY3RlZCBvdXQgb2YgdGhlIGJveCBvciBub3Q/
IE9uIGEgVk0gdGhleQo+IGFyZSBidXQgdGhhdCBkb2Vzbid0IG1lYW4gYSB0aGluZyB3aGVuIGl0
IGNvbWVzIHRvIGJhcmUgbWV0YWwKCkkgdGhpbmsgeWVzLiBpZiBub3QgcGxlYXNlIGVtYWlsIG1l
IGF0IGFsZXgxOWVwQGFyY2hsaW51eC5vcmcKCj4gMy4gSSBoYXZlIHR3byBtYWNoaW5lcywgb25l
J3MgL2Rldi9zZGEsIHdoaWNoIEknbSBhc3N1bWluZyB3aWxsIGxpa2VseQo+IGluc3RhbGwgZmlu
ZSwgaG9wZWZ1bGx5Cj4KPgo+IFRIZSBvdGhlciwgYSBsYXB0b3AsIGlzIC9kZXYvbnZtZSwgd2hp
Y2ggaXMgd2hhdCBJJ20gd29ycmllZCBhYm91dC4gQW55dGhpbmcKPiBzcGVjaWFsIEkgbmVlZCBm
b3IgQXJjaCB0byBpbnN0YWxsIG9uIGFuIE5WTUU/Cgpuby4gYnV0IEkgcmVjb21tZW5kIHRvIHJl
YWQgYXJjaHdpa2kgcGFnZSBhYm91dCBudm1lLgoKPiA0LiBDYW4gSSB3aXRoIHR3byBIREQsIC9k
ZXYvc2RhIChteSBjdXJyZW50IFNvbHVzIHN5c3RlbSl3b3IgYW5kIC9kZXYvc2RiIChhCj4gMi43
VCBkcml2ZSksIGluc3RhbGwgQXJjaCBvbiAvZGV2L3NkYiBhbmQgcGljayBhbmQgY2hvb3NlIHdo
aWNoIGRpc3RybyB0bwo+IGJvb3Q/IEkgcmVtZW1iZXLCoCB3YXkgdG8gZG8gYSBjb25zb2xlIGNv
bW1hbmQgdG8gcmVib290IGFuZCBoYXZlIEdydWIgc2VsZWN0Cj4gd2hpY2ggdG8gYm9vdCB1cCwg
YnV0IEknbSBub3Qgc3VyZSBpZiB0aGF0J3Mgc3RpbGwgYSB0aGluZz8KCnN1cmUgeW91IGNhbi4g
aWYgeW91IGhhdmUgZWZpLCB0aGVuIGl0IHdpbGwgYmUgdmVyeSBzaW1wbGUuCgo+IDUuIFdhcyB0
aGVyZSBldmVyIGEgY29uc2Vuc3VzIG9uIGhvdyBvZnRlbiB0byBkbyBhIHBhY21hbiAtU3l5dSBp
biBBcmNoPwoKYXMgb2Z0ZW4gYXMgeW91IG5lZWQgaXQuIHRoZSBvbmx5IHByb2JsZW0gaXMgdGhh
dCBpZiB5b3UgZG8gbm90IHVwZGF0ZQpzeXN0ZW0gZm9yIGEgdmVyeSBsb25nIHRpbWUgKGZvciBl
eGFtcGxlLCBhIHllYXIpLCB0aGVuIGxhdGVyIGl0IGNhbgpiZSBhIGxpdHRsZSBtb3JlIGRpZmZp
Y3VsdCB0byBkby4KCi0tClNpbmNlcmVseSwgQWxleGFuZGVyCgpfX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKQmxp
bnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL2xpc3RtYW4ucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0

