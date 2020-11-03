Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id C8A3E2A5199
	for <lists+blinux-list@lfdr.de>; Tue,  3 Nov 2020 21:42:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1604436153;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=KgZRZx4nH1hnUJLkXup/kGVLxTa4/GSJxc/1bJNtYsw=;
	b=EXVZv2bIW/8lKR/pw4BezF6SJXZ4jcGUBuClscFndE/Dv0ZoFc2BhjrlbfyG0rSyEqaNFS
	VcwQlpH3UEofuLYvA89rEv1EGcwKmSPg7gXJDnz6gslaDKhLZbC/31Jg/mG+Aiid0Bk7Ig
	V9XZKtswHGC6ITUN1l/2NptHBTdGYmQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-123-arR3Gh7TOgS0Hls6HN6YQw-1; Tue, 03 Nov 2020 15:42:31 -0500
X-MC-Unique: arR3Gh7TOgS0Hls6HN6YQw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8CB74188C12A;
	Tue,  3 Nov 2020 20:42:26 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 64A4F5C1D0;
	Tue,  3 Nov 2020 20:42:25 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E62FE181A050;
	Tue,  3 Nov 2020 20:42:23 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 0A3KgHKN013499 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Nov 2020 15:42:17 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 885C0114B9B1; Tue,  3 Nov 2020 20:42:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 82CA8114B9A5
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 20:42:15 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 23099811E78
	for <blinux-list@redhat.com>; Tue,  3 Nov 2020 20:42:15 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-379--7zUv0PFOVaH1KZZQSNebg-1; Tue, 03 Nov 2020 15:42:12 -0500
X-MC-Unique: -7zUv0PFOVaH1KZZQSNebg-1
Received: by mail-ed1-f43.google.com with SMTP id t11so19789785edj.13
	for <blinux-list@redhat.com>; Tue, 03 Nov 2020 12:42:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=lYoP/ZEc0z5HikRnG1hH8uZ6kaKtrtS/3VUiaB8IWaY=;
	b=ArKTrjE/CfCRbrAHS2azjG63ZOuTs5eLfQslLkmDNx93/sSOzuOpEjJbrCaEoc/xaS
	rl5yYjk4jy6eV0/D50h6T+wLrLgpCqoNdh8TgYSOiG3fg/ignJnMM09DVci8YDNZPpLP
	/8R1Icw5rOYFI7oPLBsR/BxMSyo71GR2W+TtyttXa8e14EyQS1ZiMjmjDVKA+aPiuzda
	OJlJcD7+el0q0ubg6QrfaEJeuJ0s2aFOuJoNkrOK99IxU/YpBxDbxomswTKNrpox731x
	CKmeVOT9cPvYkHK7XBaeriDloT1eHzTflRqXBIRhEGbNYevyxNoJHoYkTy1F3SWvOAAj
	rdeQ==
X-Gm-Message-State: AOAM531ZiUK6pg3UwocttHRtZ4UR5EBTtWnoS2NbCoapiUNyXS0CA4gm
	3IWD/PHwjcbRYOClDeEXalyAX6oGBW0HioXp
X-Google-Smtp-Source: ABdhPJxh6kqTVhE9VdQYJ5VBptYd7kAvpW25StP+/UXBP7jcnmS2QUCemxd4OxAWeQKMtIRMamon0g==
X-Received: by 2002:aa7:d34e:: with SMTP id m14mr12245292edr.42.1604436131519; 
	Tue, 03 Nov 2020 12:42:11 -0800 (PST)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id
	e19sm11520357ejz.35.2020.11.03.12.42.10 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 03 Nov 2020 12:42:11 -0800 (PST)
Subject: Re: arch linux and broadcom
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <00B86B11-5D22-4EAA-A7DC-FF8194FBD424@gmail.com>
	<cfc665bf-d6f8-3866-2ccb-94c3ee2a52db@gmail.com>
	<6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
Message-ID: <25d5c276-94a5-ad3a-c521-4b25ecf87ef5@gmail.com>
Date: Tue, 3 Nov 2020 23:42:09 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.4.0
MIME-Version: 1.0
In-Reply-To: <6B4DDB3E-A5E2-47BB-A364-B34A3E8D7A91@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

dG8gc2VlLCB3aGV0aGVyIHlvdSBuZWVkIGRyaXZlcnMgb3Igbm90IGkgbmVlZCB0byBsb29rIGF0
IHlvdXIgbHMtcGNpIApvdXRwdXQuCm9yIHlvdSBjYW4gcHJvdmlkZSB5b3VyIG1vZGVsIGlmIGl0
J3MgYSBsYXB0b3AuCgowMy4xMS4yMDIwIDIzOjA0LCBMaW51eCBmb3IgYmxpbmQgZ2VuZXJhbCBk
aXNjdXNzaW9uINC/0LjRiNC10YI6Cj4gSSB3ZW50IHRoZXJlLCBidXQgZmFpbGVkIHRvIHVuZGVy
c3RhbmQgbXVjaC4gIEl0IHdhcyBzdWdnZXN0ZWQgb25lIGNvdWxkIGdvIGdldCBkcml2ZXJzLCBi
dXQgaG93IG1pZ2h0IHRoaXMgYmUgZG9uZSBpZiB0aGUgbWFjaGluZSBjYW5ub3QgZ2V0IG9uIHRo
ZSBuZXQ/Cj4KPj4gT24gTm92IDMsIDIwMjAsIGF0IDI6MDIgUE0sIExpbnV4IGZvciBibGluZCBn
ZW5lcmFsIGRpc2N1c3Npb24gPGJsaW51eC1saXN0QHJlZGhhdC5jb20+IHdyb3RlOgo+Pgo+PiBo
ZWxsbyBjYW4geW91IHByb3ZpZGUgbHMtcGNpIG91dHB1dC4KPj4gZGlkIHlvdSBsb29rIG9uIHRo
ZSBhcmNod2lraT8KPj4KPj4gMDMuMTEuMjAyMCAyMjo1MywgTGludXggZm9yIGJsaW5kIGdlbmVy
YWwgZGlzY3Vzc2lvbiDQv9C40YjQtdGCOgo+Pj4gSSBnb3QgYXJjaCBvbiBhIHVzYiBzdGljay4K
Pj4+IEFmdGVyIGJvb3RpbmcgYW5kIHVzaW5nIGFycm93IGRvd24sIHRoZW4gZW50ZXIsIGFyY2gg
Y2FtZSB1cCB0YWxraW5nLgo+Pj4gQnV0IGV2ZW4gdGhvdWdoIHRoZXJlIGlzIGFuIGV0aGVybmV0
IGNhYmxlLCBJIGNhbm5vdCBnZXQgb24gdGhlIG5ldC4KPj4+IE5ldmVyIGlzIHRoaXMgYSBwcm9i
bGVtIHdpdGggdWJ1bnR1IG9yIHBvcCBvcyBvciB3aXRoIGZlZG9yYS4KPj4+IEFueW9uZSBhd2Fy
ZSBvZiBhIHdheSBvZiBnZXR0aW5nIG9uIHRoZSBuZXQ/Cj4+PiBJIGFsc28gaGF2ZSBhIHUgcyBi
IHdpcmVsZXNzIHdpZmkgYWRhcHRvciwgYnV0IHdpdGggYXJjaCwgbm90IHN1cmUgd2hhdCB0byBk
by4KPj4+Cj4+Pgo+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KPj4+IEJsaW51eC1saXN0IG1haWxpbmcgbGlzdAo+Pj4gQmxpbnV4LWxpc3RAcmVkaGF0
LmNvbQo+Pj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xpc3RpbmZvL2JsaW51eC1s
aXN0Cj4+Pgo+PiAtLSAKPj4gU2luY2VyZWx5LCBBbGV4YW5kZXIuCj4+Cj4+IF9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+IEJsaW51eC1saXN0IG1haWxp
bmcgbGlzdAo+PiBCbGludXgtbGlzdEByZWRoYXQuY29tCj4+IGh0dHBzOi8vd3d3LnJlZGhhdC5j
b20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdAo+Cj4gX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KPiBCbGludXgtbGlzdCBtYWlsaW5nIGxpc3QKPiBC
bGludXgtbGlzdEByZWRoYXQuY29tCj4gaHR0cHM6Ly93d3cucmVkaGF0LmNvbS9tYWlsbWFuL2xp
c3RpbmZvL2JsaW51eC1saXN0CgotLSAKU2luY2VyZWx5LCBBbGV4YW5kZXIuCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpCbGludXgtbGlzdCBtYWlsaW5n
IGxpc3QKQmxpbnV4LWxpc3RAcmVkaGF0LmNvbQpodHRwczovL3d3dy5yZWRoYXQuY29tL21haWxt
YW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

