Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id 914BC3DF970
	for <lists+blinux-list@lfdr.de>; Wed,  4 Aug 2021 03:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628042063;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=JyEvVAoA8mwCIqVhD2i8G+VyEX82O+9+ceAo9M5ZNCQ=;
	b=Da5fY8TJDxJmb5W4sHNLxEeWDFCfgh9s485HpTbaP8KM0Z+TtZS8RT8IWC+4UnO45jDV1l
	3aD4PkcaWtC7AfrlV/R2GcFIDwKaOUzLF3SLNfowwAZ+q71lKBIzRClqMH49iSbIET+C7s
	L/F6TBUXogUwxQv6FlfrWDYnZvhvZ/U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-194-3vVsRG1_MhGS8rbNZtaV8g-1; Tue, 03 Aug 2021 21:54:22 -0400
X-MC-Unique: 3vVsRG1_MhGS8rbNZtaV8g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id E3146875110;
	Wed,  4 Aug 2021 01:54:16 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 828D960C05;
	Wed,  4 Aug 2021 01:54:15 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 342BF4A700;
	Wed,  4 Aug 2021 01:54:13 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1741s7ml020387 for <blinux-list@listman.util.phx.redhat.com>;
	Tue, 3 Aug 2021 21:54:07 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5C9D1E30BF; Wed,  4 Aug 2021 01:54:07 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast04.extmail.prod.ext.rdu2.redhat.com [10.11.55.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 13206E5B10
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 01:54:04 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 14B1D101A529
	for <blinux-list@redhat.com>; Wed,  4 Aug 2021 01:54:04 +0000 (UTC)
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com
	[209.85.219.48]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-483-QjCKWNoyOleURxneasU_KQ-1; Tue, 03 Aug 2021 21:54:02 -0400
X-MC-Unique: QjCKWNoyOleURxneasU_KQ-1
Received: by mail-qv1-f48.google.com with SMTP id js7so439899qvb.4
	for <blinux-list@redhat.com>; Tue, 03 Aug 2021 18:54:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=zP+gxoQu/5x9RtqiYrYEDucMZcDNms1xYKHxSgH58co=;
	b=a7u/ilhkoq4pA0rzMdTecFHu8iO2sFdlO/NGhLo8wDBlu8BT/Sd8Xh7lSz3KNqR+j5
	ukzhPuPyQPecw8ssHsf7BkWDftFcBZIm31HyjrLoPC8wbZx3a3eaNEJK6oKGI3ikgwdA
	itB7qcnU/9onUunttAC7tUps9cCSam7S4PgAvYmjlGYMcr+SdHjWT9xRE23ho8E/fUtA
	br3HMd16yGqFCXdWolrOZkuNz75vEnRa0Th4hoU5ZXIRPyA4nNzrEwXQyAjjr3ASvUA9
	TEcUivn3yVZn/IAe0cbRkSJ8V70hF/EJq0QJ6uYK6czauuq32BNCS8NRqN/8o1B2m0Lr
	oFHA==
X-Gm-Message-State: AOAM532vD0ea2bLtyDrmSQxInll2Gub3C/gSdRXVc3ecgi/ysHigQ3kw
	XNQcyt7+3OfteteI4WUao2Ggy4cif7HkBA==
X-Google-Smtp-Source: ABdhPJy6/5tX/jLQGJqQN+uTk+ffmTR9y4s8/LykJVPxeiS8uSfLwvaD31GwMwfQoze1UFhGF62ZrQ==
X-Received: by 2002:a0c:c612:: with SMTP id v18mr24281645qvi.20.1628042041421; 
	Tue, 03 Aug 2021 18:54:01 -0700 (PDT)
Received: from ?IPv6:2601:192:4c80:1420::db66? ([2601:192:4c80:1420::db66])
	by smtp.gmail.com with ESMTPSA id 28sm498678qkp.26.2021.08.03.18.54.00
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Tue, 03 Aug 2021 18:54:00 -0700 (PDT)
Subject: Re: Solus DE observations
To: blinux-list@redhat.com
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
Message-ID: <57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
Date: Tue, 3 Aug 2021 21:53:50 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.79 on 10.11.54.5
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"

QXJlIHlvdSBmYW1pbGlhciB3aXRoIGFueSBvZiB0aGVzZSBkZXNrdG9wcyBvbiBhbm90aGVyIGRp
c3RyaWJ1dGlvbj/CoCAKVGhlIE1hdGUgZXhwZXJpZW5jZSBpcyBtdWNoIGxpa2UgdGhhdCBvZiBV
YnVudHUgb3IgTGludXhtaW50LCB3aXRoIGEgCnNpbmdsZSBwYW5lbCBhbmQgQnJpc2ttZW51LsKg
IElmIHlvdSBsaWtlIEdOT01FIDQwLCBTb2x1cyBHTk9NRSBpcyBhIApzdGFuZGFyZCBleHBlcmll
bmNlLsKgIEFsbCB0aGVzZSBzcGlucyBhcmUgYXZhaWxhYmxlIGFzIGxpdmUgc3lzdGVtczsgSSAK
c3VnZ2VzdCB5b3UgdHJ5IHRoZW0gYWxsLgoKCgpIVEgsCgoKCkRhdmUKCgoKClNlbnQgd2l0aCBU
aHVuZGVyYmlyZCBhbmQgU29sdXMgR05VL0xpbnV4LgoKT24gOC8zLzIxIDk6MTkgUE0sIExpbnV4
IGZvciBibGluZCBnZW5lcmFsIGRpc2N1c3Npb24gd3JvdGU6Cj4gSWYgSSB3b3VsZCB0cnkgU29s
dXMsIHdvdWxkIGl0IGJlIGJlc3QgdG8gdHJ5IG1hdGUsLCBnbm9tZSwgb3IgYnVkZ2llPwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KQmxpbnV4LWxpc3Qg
bWFpbGluZyBsaXN0CkJsaW51eC1saXN0QHJlZGhhdC5jb20KaHR0cHM6Ly9saXN0bWFuLnJlZGhh
dC5jb20vbWFpbG1hbi9saXN0aW5mby9ibGludXgtbGlzdA==

