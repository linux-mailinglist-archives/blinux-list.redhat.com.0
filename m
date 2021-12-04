Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B2E45468377
	for <lists+blinux-list@lfdr.de>; Sat,  4 Dec 2021 10:10:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1638609047;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=D1u/vbeMgOfvcuTobpomhHVwC4cpY4qsmaiZ1v84l5w=;
	b=acoCrqSvlTkl4gCEGXLx5Gn//PsQRFQYvglzl0TfpOj7iRaJ5neVan0ZDoGntPCt51T44q
	hRuvhZplmN3ES6BV2n9InjuVYvs5QbdMJ1C/mVV5UA2en5171RFbxPg4hQIPi5X/2AjmiQ
	3QKwGdTMYEiWmJh3salOD7x2JpOGpkE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-140-rY7DrXoiNwe6usWv2SLNeA-1; Sat, 04 Dec 2021 04:10:44 -0500
X-MC-Unique: rY7DrXoiNwe6usWv2SLNeA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id BF649801B01;
	Sat,  4 Dec 2021 09:10:38 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id F1C8460C13;
	Sat,  4 Dec 2021 09:10:36 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 3DC574CA93;
	Sat,  4 Dec 2021 09:10:29 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.rdu2.redhat.com
	[10.11.54.2])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1B49AJqV012282 for <blinux-list@listman.util.phx.redhat.com>;
	Sat, 4 Dec 2021 04:10:20 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D23D44047279; Sat,  4 Dec 2021 09:10:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CE2844047272
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 09:10:19 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[205.139.110.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B5F3E803DDA
	for <blinux-list@redhat.com>; Sat,  4 Dec 2021 09:10:19 +0000 (UTC)
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com
	[209.85.128.43]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-506-2lRet2boNOi-4Vhy19AuSA-1; Sat, 04 Dec 2021 04:10:18 -0500
X-MC-Unique: 2lRet2boNOi-4Vhy19AuSA-1
Received: by mail-wm1-f43.google.com with SMTP id 137so4251210wma.1
	for <Blinux-list@redhat.com>; Sat, 04 Dec 2021 01:10:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=Ao5CNjPMXhnBovPVMXopXewCV1HIPIE5MefnjVV8wAY=;
	b=R9N7CM28uQowuJHMdew+TGVAflWC6aREfFGKFIab7Jr4XA4njkaTNNLyYtMYAOsYTZ
	73HyNb5iTQogLkvC+icWK1n76+oCpVjfcQytcT+PZpkPhSIykMAQ8PFSewvkgSlfgZLV
	CxU6ryNj3hr9Ug1PrYhCH1XXrcOgzzbq6bDhCqgELwke25lTXE8DcAVLYrW/3fP0P5LE
	BY8NdIq3B2EPtq1HZQqB9mRmZFtPoHtocwz+WLReiDVNt5f9UEaxUF4eIIMkJ7DyCHcf
	pkIFmI7mYTxjjTZmJS7gA7yndZPbS35OXF5Gh36E823/dQy19OIb6j/k0dzyXsVUUoWW
	AnGQ==
X-Gm-Message-State: AOAM531LwPC2QxFBP2B97IqvmBQm0Ob6t62UYjl7wtsX2NpfnifA7dyZ
	Eq6H9hzKkPF9Se/G4oJjHZdAQYavcwZ22A==
X-Google-Smtp-Source: ABdhPJx7srbbJsOF1N7vtXfwJ3vdfoeTVL1Q5wJEpUkHvI1xRhzmfvbjW/YpFIw0G+rtxCYuatwepA==
X-Received: by 2002:a1c:9d48:: with SMTP id g69mr22601959wme.188.1638609016842;
	Sat, 04 Dec 2021 01:10:16 -0800 (PST)
Received: from brandt-slint.study.home ([197.184.182.55])
	by smtp.gmail.com with ESMTPSA id m3sm4844528wrv.95.2021.12.04.01.10.15
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sat, 04 Dec 2021 01:10:16 -0800 (PST)
To: Blinux-list@redhat.com, slint@freelists.org
Subject: Getting Orca not to respond in a particular window
Message-ID: <60b15834-2025-b113-42dc-64e078d6772b@gmail.com>
Date: Sat, 4 Dec 2021 11:10:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.12.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.84 on 10.11.54.2
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi all,


Sorry for the cross post, but I really need help here.


Being back on Slint, not related to this, however, my Qemu Windows VM is 
now in working order.


The issue I'm having is that Orca grabs the number pad, even after 
having pressed ALT+CTRL+g to give the keyboard to the VM.


I know there is a way to make Orca "sleep" in a particular window, but I 
cannot recall for the life of me how to do this.


If anyone can help, I would really appreciate it.


Thanks so long.

-- 
Warm regards,

Brandt Steenkamp

Sent from Slint Linux using Thunderbird

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

