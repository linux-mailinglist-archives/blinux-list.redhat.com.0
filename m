Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [216.205.24.124])
	by mail.lfdr.de (Postfix) with ESMTP id 376A63BF096
	for <lists+blinux-list@lfdr.de>; Wed,  7 Jul 2021 22:04:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1625688269;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=Ul97jRrYvMIRD7+x8AFUljITTBiB+eKj4VRQ1HZ6JfY=;
	b=JpNYNCCMQWvK2raXwND6hcJ16sy4XDI6pPFlxgjtwUjbeAbYYo0yXW0iCYTp6yG6Js7+Tt
	+5V2wpxA9XjChWZwPrgy66dqwB2UNKBeARCbTiKdy6IgW9ZblLVMaqTmlRP/FisNuF5uyX
	jqKrPJhUZauHj+HnzOEdNpFy/PcCs2s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-207-lLU50iARMDejedgotAbXeQ-1; Wed, 07 Jul 2021 16:04:27 -0400
X-MC-Unique: lLU50iARMDejedgotAbXeQ-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A78B0801107;
	Wed,  7 Jul 2021 20:04:23 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 97D3760843;
	Wed,  7 Jul 2021 20:04:22 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id C6F6F4EA2A;
	Wed,  7 Jul 2021 20:04:20 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 167K4CWO016793 for <blinux-list@listman.util.phx.redhat.com>;
	Wed, 7 Jul 2021 16:04:12 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5D44A1009156; Wed,  7 Jul 2021 20:04:12 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 58C651009152
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 20:04:08 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D300E800BED
	for <blinux-list@redhat.com>; Wed,  7 Jul 2021 20:04:08 +0000 (UTC)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com
	[209.85.208.43]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-213-xf_EOInCOVy4bNPkssiS0A-1; Wed, 07 Jul 2021 16:04:06 -0400
X-MC-Unique: xf_EOInCOVy4bNPkssiS0A-1
Received: by mail-ed1-f43.google.com with SMTP id h2so5068619edt.3
	for <Blinux-list@redhat.com>; Wed, 07 Jul 2021 13:04:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=APXyrtupSC+M3KsdzHsL+zP7KuOELYzfj8jK4BM+1I0=;
	b=hp8Xnq9qhexHWIMMhlOeeHyRw7c2/k7JtjUIsv4cVF+zuiwY+K2mShvDxiiOgLcAmV
	MD7rR0fARCM0GjWgtYQvrQekwPZ2deo+K/Izs3KQkSP0aGcwbaDiK/JRgZ1LChBtRImB
	HImMH5iBGvgWXau6ZJ61IrUMZpHbT03G0BOgQWOxPMh3iqPOPW7X0fa5o9VpexDbeQCx
	tteHRY+77IBbtmHtKjYQMdGFDL3t/0obsDsN78qjpRMthkn2Yo/YJ2WML44cKBJkZ+S2
	3MIJythAXP5QNCioEMPTFSISEcGKS/6HpTxi51dGpO9peXtm03fgg57qV6cZAI3Hwdxw
	aGmg==
X-Gm-Message-State: AOAM532jU3v7YxFYxb/6+vXY8y5dK4EExV7WjdBO0COYJVH2xnuIe8ii
	cvMnXGQL94XvcDZf/5fSeMDO+B6K4or5Vw==
X-Google-Smtp-Source: ABdhPJwV54597cag+xB+XqxJHjj69PJi2DSWK1yZFFZp978IOUqXoUNEUNwLmUX7NdiCxtVpDMZ+og==
X-Received: by 2002:a05:6402:35cf:: with SMTP id
	z15mr32758423edc.208.1625688244817; 
	Wed, 07 Jul 2021 13:04:04 -0700 (PDT)
Received: from [192.168.76.145] ([197.185.106.141])
	by smtp.gmail.com with ESMTPSA id x21sm45417eds.38.2021.07.07.13.04.03
	for <Blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Wed, 07 Jul 2021 13:04:04 -0700 (PDT)
To: Blinux-list@redhat.com
Subject: Jenux does not talk in VMWare Workstation Player
Message-ID: <edeb5f8d-eff1-2be3-8d90-9c41402b6d05@gmail.com>
Date: Wed, 7 Jul 2021 20:04:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
	Thunderbird/78.11.0
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Mimecast-Spam-Signature: yes
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hi everyone,


I tried installing Jenux before going with my current Arch install, but 
for some reason Jenux does not talk at all after boot. I can see that 
the ISO has actually booted using NVDA's OCR function, but no sound from 
the Distro at all.


If anyone can help with this, I would be very grateful.

-- 
Warm regards,

Brandt Steenkamp

Sent from Thunderbird on  Arch Linux

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

