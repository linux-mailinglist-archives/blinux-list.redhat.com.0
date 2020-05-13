Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	by mail.lfdr.de (Postfix) with ESMTP id 406781D1C60
	for <lists+blinux-list@lfdr.de>; Wed, 13 May 2020 19:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1589391448;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=qJDSnaHJZQntvtpLlZGBVDXQHd4jRw/sCpq14CjdCWY=;
	b=HV2gM1ePXPxIJCI9o3rSroBGO9OzX4XHzRvDU2Slv15ptQSkbXprxTyicCaS2H8pKJBmfZ
	cx5zb771f1l+JWHbsAez9iSlk9dV8UKBZ4q0J0TkYXnDVti0eVXBlmJlS+ZYJ4jTcjuFLB
	4E0qA1QL4txXCFjvWDv/v1MATm0/r8s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-492-57kGxeUkPvKCBdagV15olQ-1; Wed, 13 May 2020 13:37:25 -0400
X-MC-Unique: 57kGxeUkPvKCBdagV15olQ-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D24B91005512;
	Wed, 13 May 2020 17:37:20 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 6A6A81002395;
	Wed, 13 May 2020 17:37:20 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12A801809543;
	Wed, 13 May 2020 17:37:19 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com
	[10.11.54.4])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 04DHbG5P014013 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 13 May 2020 13:37:16 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id DB59920234BD; Wed, 13 May 2020 17:37:15 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 60FE020234BC
	for <blinux-list@redhat.com>; Wed, 13 May 2020 17:37:12 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 0DE39185A78B
	for <blinux-list@redhat.com>; Wed, 13 May 2020 17:37:12 +0000 (UTC)
Received: from mail-qt1-f180.google.com (mail-qt1-f180.google.com
	[209.85.160.180]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-488-7SElwsRqP5iehhrmEHOQVg-1; Wed, 13 May 2020 13:37:09 -0400
X-MC-Unique: 7SElwsRqP5iehhrmEHOQVg-1
Received: by mail-qt1-f180.google.com with SMTP id p12so457979qtn.13
	for <blinux-list@redhat.com>; Wed, 13 May 2020 10:37:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=O8j9kO4vHmjxTNy/v6Mra6/HZfidAa81EA2fdS5Qts0=;
	b=BQzrohxLaSI8y6yLYl/UQ5vk+W0+a7QV8Qk5ULPnO8FuU3Hg/q/gVTYPGNxGU17dMI
	WmtimAX7cs2J6pd29VOPaOOhJkGDaVZQgh3QCLLkGIjpbDEgz8RXYU3OlObYZ0r/SBom
	HmIVAU1/jRx34AlJpULQLdcpDFukjCw+OrqwnN4MP80CLD3pHigxrqhP0LV2ij3U8qCv
	flBDufV6Zu9KOH4rHgKMFRyPjlGn8wHmiUDvwaERQPhlwqqCN/3lRyuTGLvPqwxBG24r
	znt5fEiWIfZkppCFeRsWbZ3+62pX0ackJ+oBiX49tk4mnBgx7jKSglCal0SSFRmr6Zrm
	CvjA==
X-Gm-Message-State: AOAM530l+wXG/HhoeQIX1XL5Vr9Kitzq3HFJKJ7WRR8GEVJ17Qvdyho7
	LXY2/CYoisX8hCZ3W/AwSihmpsSKp6s=
X-Google-Smtp-Source: ABdhPJyazk5JAfO1Vj3H/Ap7jCDzZDGY9dsgTxYpZnxmOyjzb8kYs+oBkU5OnovPeA8yc7UJcfnKGQ==
X-Received: by 2002:ac8:2965:: with SMTP id z34mr257320qtz.44.1589391428469;
	Wed, 13 May 2020 10:37:08 -0700 (PDT)
Received: from xu4.kyle.tk
	(2606-a000-111a-8d0a-0000-0000-0000-065f.inf6.spectrum.com.
	[2606:a000:111a:8d0a::65f])
	by smtp.gmail.com with ESMTPSA id t21sm250928qtb.0.2020.05.13.10.37.07
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 13 May 2020 10:37:07 -0700 (PDT)
Subject: Re: b s d and orca
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <12986DCD-076F-4781-AC3C-DECFD69D5A1C@gmail.com>
	<A3925F9E-75B0-4E9E-AF8E-EC29BF01496D@gmail.com>
	<b12267b0-944d-d609-53dd-11e9375f002d@gmail.com>
	<FCD3A752-75FC-4A33-BEAE-D96D42DB15DB@gmail.com>
	<b85fb8d0-a4ac-e83f-c82c-38a7886b6bdf@gmail.com>
	<8D288BBE-1C57-4394-AC55-653FD5B17442@gmail.com>
Message-ID: <8e35d90a-e440-5198-5135-6f3e0a01bd40@gmail.com>
Date: Wed, 13 May 2020 13:37:06 -0400
User-Agent: Mozilla/5.0 (X11; Linux armv7l; rv:68.0) Gecko/20100101
	Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <8D288BBE-1C57-4394-AC55-653FD5B17442@gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.4
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Content-Transfer-Encoding: base64

V2VsbCwgaXQncyB1bmZvcnR1bmF0ZSwgYnV0IGEgbnVtYmVyIG9mIHRoaW5ncyBjb3VsZCBiZSB3
cm9uZy4gSXQncyAKcG9zc2libGUgdGhhdCBPcmNhCgogwqBpc24ndCBvbiB0aGUgc3lzdGVtIGJl
Y2F1c2UgaXQgYXQgb25lIHRpbWUgZGlkbid0IHdvcmssIG9yIGJlY2F1c2UgCmFsdGhvdWdoIHdp
dGggR05PTUUgaXQncyBpbnN0YWxsZWQgYXV0b21hdGljYWxseSwgYnV0IHdpdGggTUFURSwgaXQg
CmRvZXNuJ3QgZ2V0IGluc3RhbGxlZCBhdXRvbWF0aWNhbGx5LCBhbmQgbXVzdCBiZSBleHBsaWNp
dGx5IGluc3RhbGxlZC4gCkl0IGNvdWxkIGJlIHRoYXQgT3JjYSBpcyBzdGlsbCBub3Qgd29ya2lu
ZyBiZWNhdXNlIFB5dGhvbiAzLnggbWF5IG5vdCBiZSAKaW4gdGhlIEJTRCBwb3J0cyBzeXN0ZW0g
c3RpbGwsIGFsdGhvdWdoIEkgY2FuJ3QgaW1hZ2luZSB0aGlzIGJlaW5nIHRoZSAKY2FzZS4gSXQn
cyBhbHNvIHBvc3NpYmxlIHRoYXQgT3JjYSBtYXkgYmUgaW5zdGFsbGVkLCBhbmQgZXZlbiAKc3Bl
ZWNoLWRpc3BhdGNoZXIgbWF5IGJlIGluc3RhbGxlZCwgYnV0IG5vIHNwZWVjaCBzeW50aGVzaXpl
ciBpcyAKcHJlc2VudC4gVGhlIG9ubHkgd2F5IHRvIGZ1cnRoZXIgZGlhZ25vc2UgdGhlIGlzc3Vl
IGlzIHRvIGZpbmQgb3V0IApleGFjdGx5IHdoYXQgcGFja2FnZXMgYXJlIG9uIHRoZSBsaXZlIGVu
dmlyb25tZW50IGFuZCB0aGUgdmVyc2lvbiAKbnVtYmVycy4gTW9zdCBsaWtlbHksIGl0IGlzIG5v
IGxvbmdlciB0aGUgUHl0aG9uIGNvbmZsaWN0LCBidXQgaXMganVzdCAKbWlzc2luZyBzb2Z0d2Fy
ZSB0aGF0IGNhbiBtb3N0IGxpa2VseSBiZSBlYXNpbHkgY29ycmVjdGVkLgoKfkt5bGUKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1h
aWxpbmcgbGlzdApCbGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20v
bWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

