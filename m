Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 20EF84107F6
	for <lists+blinux-list@lfdr.de>; Sat, 18 Sep 2021 19:59:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1631987952;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=I3v8ixo6NhVf9kdHllZj60UUAYT13E4G56KQc9B37ZY=;
	b=Y/Qxw0QA7nD2Z6acxY0TyBMvz/c6uFRTRaQicJdAUEMbS7z7kAN9xheOH3WVF1SSzcAZrK
	5HEMD9uYKhz5jdXFt8ZvKECpQewD6YdTLbwdHeIncb1ywSkDIiKN2oBxZLWuQJsGh0+gtK
	qZSHOqIpX4hF1bgnUHhD1fnVvfQZt28=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-229-7A8_kLn6NQSkFfCqzghLww-1; Sat, 18 Sep 2021 13:59:09 -0400
X-MC-Unique: 7A8_kLn6NQSkFfCqzghLww-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 959851800D41;
	Sat, 18 Sep 2021 17:59:05 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 20F965D6B1;
	Sat, 18 Sep 2021 17:59:00 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3CDBD1809C81;
	Sat, 18 Sep 2021 17:58:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 18IHsgpM009238 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 18 Sep 2021 13:54:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 7134E202E4A4; Sat, 18 Sep 2021 17:54:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6CC6A202E4A6
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 17:54:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 355B08007B1
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 17:54:39 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
	[209.85.167.44]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-261-jLefkHPbOUShvq0aZEL9zg-1; Sat, 18 Sep 2021 13:54:37 -0400
X-MC-Unique: jLefkHPbOUShvq0aZEL9zg-1
Received: by mail-lf1-f44.google.com with SMTP id m3so45009780lfu.2
	for <blinux-list@redhat.com>; Sat, 18 Sep 2021 10:54:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:date:from:to:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=MqsrIRTuQ6/+nowXC3S5xs+kK4Dqyv+nqt4qd8x9f1Y=;
	b=hzeokQzQ71CldvSIDHKQgi//jMb3yaiH9xV19WltV+du4MhVQFiT4EGiCDrjqchyw4
	uH6UqjErWR5y7viTqoiCqTUD4zwpTlXLPd7mNc1inbMGeNqkwRqUZRM5SOd0f5eQfzWK
	mnmXgtp4vfELHExj5OwyTxJyMsrUnVIkzr+C/eDNdk3PQCZF8kzqQJ6dPIkr/8BhLGJZ
	qJD65AIH6yVsUvznqboVHqXYtbLIHxxmliWc7cfY+obH5xchAPKXx9CkXXEDfaI5Y1S5
	JTjTrGGdfxG6xuGv5uIWl+D1vEgZR3ROYJacuN3HU1O6AdaWPKQSELVHqNFmvI6HzMLq
	lFhQ==
X-Gm-Message-State: AOAM5314H/d1ufu9dws7DZWm/2hPrc4ZNIBpB9PGvubXuqvhhGAwBZ8B
	f24My7tERp22WYve2klatt+gJyuzo2Y=
X-Google-Smtp-Source: ABdhPJxN3tN4EWkmWbvS3XRA+EoX21+YSAo73dPjpQM8Um9FaFm86MMlhM8MQWCTcN5uri6lw4ERbQ==
X-Received: by 2002:a05:651c:170b:: with SMTP id
	be11mr15025927ljb.219.1631987675323; 
	Sat, 18 Sep 2021 10:54:35 -0700 (PDT)
Received: from localhost ([91.77.167.245]) by smtp.gmail.com with ESMTPSA id
	i20sm1078852lja.36.2021.09.18.10.54.34 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Sat, 18 Sep 2021 10:54:34 -0700 (PDT)
Date: Sat, 18 Sep 2021 20:54:33 +0300
To: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: rhvoice broken on Arch
Message-ID: <20210918175433.vxj2bqpztnz67iqx@alex-pc>
References: <YUXl/70G69mzJqvV@rednote.net>
 <YUYJPmtUN850ISXK@rednote.net>
MIME-Version: 1.0
In-Reply-To: <YUYJPmtUN850ISXK@rednote.net>
User-Agent: NeoMutt/20210205
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64

T24gU2F0LCBTZXAgMTgsIDIwMjEgYXQgMTE6NDM6NThBTSAtMDQwMCwgTGludXggZm9yIGJsaW5k
IGdlbmVyYWwgZGlzY3Vzc2lvbiB3cm90ZToKPiBEZWFyIEFsbDoKPgo+IEFzIGlzIG15IHVzdWFs
IHByYWN0aWNlLCBJIGRpZCBhIGZ1bGwgLVN5dSB1cGdyYWRlIG9mIG15IHR3byBBcmNoIExpbnV4
Cj4gc3lzdGVtcyB0aGlzIG1vcm5pbmcuCj4KPiByaHZvaWNlIGlzIG9uZSBwYWNrYWdlIHRoYXQg
d2FzIG5ldyB0aGlzIHdlZWsuIEl0J3Mgbm90IHdvcmtpbmcgd2l0aAo+IFNwZWVjaC1EaXNwYXRj
aGVyLiBXaGVuIEkgZG8gYSBBbHQrRjIgYW5kIHR5cGUgJ29yY2EgLXInIEkgaGVhciB0aGUKPiBk
dW1teSBkcml2ZXIgYXVkaW8gbWVzc2FnZS4KCml0IHNlZW1zIHNvbWVvbmUgZG9lc24ndCByZWFk
IHRoZSB0ZXJtaW5hbCBhZnRlciB0aGUgdXBkYXRlLCBkb2VzIGl0PwoKeW91IG5vdyBuZWVkIHRv
IGluc3RhbGwgdGhlIHZvaWNlcyB0aGF0IHlvdSBhcmUgdXNpbmcgc2VwYXJhdGVseS4gZm9yIGV4
YW1wbGU6CiMgcGFjbWFuIC1TIHJodm9pY2Utdm9pY2Ute2FsYW4sc2x0fQoKPiBJJ3ZlIHJlc2V0
IGZvciBlc3BlYWstbmcgaW4gbXkgL2V0Yy9TcGVlY2gtRGlzcGF0Y2hlci9zcGVlY2hkLmNvbmYs
IGFuZAo+IE9yY2EgaXMgaGFwcHkuIFllcywgSSB3YXMgcHJldmlvdXNseSBub3QgbG9hZGluZyB0
aGF0IG1vZGVsIChub3IgVm94aW4pLgo+Cj4gU29ycnksIEFsZXhhbmRlciEKCkkgZG9u4oCZdCBr
bm93IHdoeSB5b3UgYXJlIGFwb2xvZ2l6aW5nLCBidXQgaW4gYW55IGNhc2UsIHlvdSBkb27igJl0
IG5lZWQgdG8gZG8gdGhpcy4KCj4gQmVzdCwKPgo+IEphbmluYQoKLS0KU2luY2VyZWx5LCBBbGV4
YW5kZXIKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJs
aW51eC1saXN0IG1haWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vbGlz
dG1hbi5yZWRoYXQuY29tL21haWxtYW4vbGlzdGluZm8vYmxpbnV4LWxpc3Q=

