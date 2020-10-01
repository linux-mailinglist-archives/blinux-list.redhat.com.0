Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id CBF35280762
	for <lists+blinux-list@lfdr.de>; Thu,  1 Oct 2020 21:04:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1601579073;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=b/Us2JkqRQ6+xw3MRdGQToskhDGVgQj+CrHHw74wSrA=;
	b=G4+XTHCqzjQrt6TqtI3K6+6Z6MQACegVg6vmE8v/3c3Op9nEqojEY0+1rHnDkeI3N0QdiY
	74yLdVL8jsGnBvf9Ff/JzswZeLmpjfCftV2OXp6Lj/zF4Yvd1pW2r0anw4GCigOvdj6N2W
	lnlhfdUMG6p6E2VabyPQNjLH8vo69Fg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-427-BHSDB33gPzKhbweZG3lyvg-1; Thu, 01 Oct 2020 15:04:30 -0400
X-MC-Unique: BHSDB33gPzKhbweZG3lyvg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com [10.5.11.23])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A05E3800461;
	Thu,  1 Oct 2020 19:04:25 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 63B7819C59;
	Thu,  1 Oct 2020 19:04:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 8D7271826D2E;
	Thu,  1 Oct 2020 19:04:18 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 091J3Mxv010369 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 1 Oct 2020 15:03:22 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 66B6110087DF; Thu,  1 Oct 2020 19:03:22 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 62D8710087FB
	for <blinux-list@redhat.com>; Thu,  1 Oct 2020 19:03:20 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id EB063101A53F
	for <blinux-list@redhat.com>; Thu,  1 Oct 2020 19:03:19 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com
	[209.85.218.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-374-cJjD5fIBMtubilO_Hvyy1g-1; Thu, 01 Oct 2020 15:03:17 -0400
X-MC-Unique: cJjD5fIBMtubilO_Hvyy1g-1
Received: by mail-ej1-f45.google.com with SMTP id ce10so3595106ejc.5
	for <blinux-list@redhat.com>; Thu, 01 Oct 2020 12:03:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=DrmYV1Pzv3lNky7Rcd+mKutxKNg0FHhUJLp7c0NSb74=;
	b=W6Sp+0lfUPWi0P6/cPZaQpV++2v8uMaoOvL02PcoXr+7bOq7hWj55QHUeV+qDQQ/9H
	/JZ58GuNIal+a8X5SV3D4mmf9K0BXtVw/zSeX3At9WHobI7wvCqnpplFmp4GI4UaWGaN
	zT5Q4Q1BdIa3BDL5OlyBjo+FMhWi6M1ktKHZ+1s2UwOCnJGCpaRfdZ1qBwy8dwdYFtyj
	Tgw13G5wlbUH6ZC5fezd42Bztjoob7vPGyNobVpOFR84aOt34OVc1JRXHMc6VbExgVCG
	rsobmmH1hPDmyaztYlQEdY0bUI1pEZUzn97ngll9eMkRek4b3Y4WNw+0iotd7BAo7NK1
	Adfw==
X-Gm-Message-State: AOAM530E0AfGjb3Cjy1jSFka4jp+uePFBvhhTiY0+qHMlp8+0UAtcQ70
	VsiK/Z1MHXyeneRgaSByrkDqg/lOw3vx+qxm
X-Google-Smtp-Source: ABdhPJwmz5BhxCUzsqMKp8X9QyjpitjHcOZOT4FOGchrA5hQxWmH4CrqaZ5jz1GP3Q+zXOeloylySg==
X-Received: by 2002:a17:906:4e97:: with SMTP id
	v23mr10051399eju.501.1601578995372; 
	Thu, 01 Oct 2020 12:03:15 -0700 (PDT)
Received: from [192.168.1.73] ([91.77.167.245])
	by smtp.gmail.com with ESMTPSA id 92sm4350990edm.30.2020.10.01.12.03.14
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 01 Oct 2020 12:03:14 -0700 (PDT)
Subject: Re: console screen readers
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <alpine.NEB.2.23.451.2010010138250.22862@panix1.panix.com>
	<90fed4b0-7e11-cf0a-c47b-7ef7b376e383@gmail.com>
Message-ID: <e1708bf4-6934-2006-e1c9-2bfc39b6b56b@gmail.com>
Date: Thu, 1 Oct 2020 22:03:13 +0300
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <90fed4b0-7e11-cf0a-c47b-7ef7b376e383@gmail.com>
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

aGVsbG8uIGJlc3Qgc2NyZWVuIHJlYWRlciBmb3IgY2F0YWNseXNtIGRhcmsgZGF6ZSBhaGVhZCBp
biBteSBodW1ibGUgCm9waW5pb27CoCBpcyBzcGVha3VwLgoKMDEuMTAuMjAyMCAxMjozMSwgTGlu
dXggZm9yIGJsaW5kIGdlbmVyYWwgZGlzY3Vzc2lvbiDQv9C40YjQtdGCOgo+IEknbSBnb2luZyB0
aHJvdWdoIHJlcGxpZXMsIGFuZCB0aGlzIGlzIGFuIGFtYXppbmdseSBmYXNjaW5hdGluZyAKPiBk
aXNjdXNzaW9uLiBJIGdvdCBwb2ludGVkIHRvIENEREEgZm9yIGEgZ2FtZSB0byBraWxsIHRpbWUg
d2l0aC4uLndoaWNoIAo+IGNvbnNvbGUgYmFzZWQgc2NyZWVucmVhZGVyIHdvcmtzIGJlc3Qgd2l0
aCB0aGF0IG9uZT8KCi0tIApTaW5jZXJlbHksIEFsZXhhbmRlci4KCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkJsaW51eC1saXN0IG1haWxpbmcgbGlzdApC
bGludXgtbGlzdEByZWRoYXQuY29tCmh0dHBzOi8vd3d3LnJlZGhhdC5jb20vbWFpbG1hbi9saXN0
aW5mby9ibGludXgtbGlzdA==

