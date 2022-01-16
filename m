Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FD1048FD89
	for <lists+blinux-list@lfdr.de>; Sun, 16 Jan 2022 15:54:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1642344850;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=dsTgw2Ev3o2FSmDS8ciblZb1x10j4Wg4Hd4y3ya60NY=;
	b=OZerLhPQdq4kdtoMc5nQfxDhPGWrnWV4mVCVxeiuULKq3lRyb/NEppF4XOk4vA+ggYx89Z
	tP98q5wDxaO1umLCOpB605s5IaDVZq8k5UgW6VoZida+dmpSXWAbBxaK1SOwRfqtIaY6t7
	kV8DV4mmzGqQOWooU9MhJfyA2d0pN8E=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-492-PnB5hpugO6iYBmFbRFJMkg-1; Sun, 16 Jan 2022 09:54:06 -0500
X-MC-Unique: PnB5hpugO6iYBmFbRFJMkg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 55E0E1853026;
	Sun, 16 Jan 2022 14:54:00 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 1F7537D3CE;
	Sun, 16 Jan 2022 14:53:57 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id B47371809CB8;
	Sun, 16 Jan 2022 14:53:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com
	[10.11.54.8])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 20GEqvQ5025223 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 16 Jan 2022 09:52:58 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id D4B98C15E74; Sun, 16 Jan 2022 14:52:57 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D04C6C159B3
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 14:52:57 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id B42B8381EEA7
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 14:52:57 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com
	[209.85.128.50]) by relay.mimecast.com with ESMTP with STARTTLS
	(version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	us-mta-613-YFOPgzkQOvmX5eYteGEGfw-1; Sun, 16 Jan 2022 09:52:55 -0500
X-MC-Unique: YFOPgzkQOvmX5eYteGEGfw-1
Received: by mail-wm1-f50.google.com with SMTP id
	p1-20020a1c7401000000b00345c2d068bdso18137787wmc.3
	for <blinux-list@redhat.com>; Sun, 16 Jan 2022 06:52:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20210112;
	h=x-gm-message-state:subject:to:references:from:message-id
	:disposition-notification-to:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=OtzaIFPYP81WkbgpSSwrx2fzyeW17HeP81OqL+tmbxs=;
	b=34osbKRPxlK2hRa0+fdilkGIAZ4Rg6qFCsRY0VkgCFGnf8gOXnihBtq5Vq+re/xWiy
	rl/GTmXonVaJHuXqGfW/fKfQ7X1De15d0h1n0RSE32Cax1kp/GYU2t1Oaaj/KXX2e5GB
	pUuiP4ecsZpoHrqnjjcdB5A1uRMsThw8pHSxn/OYvO8UfcyNOLr2dqSBoRC7MgXhydqn
	d06ztj0lR0nDxNGlfxkHk6o9YDvcH61BV5Rr6OLZB403xxzMVzvdFaRDlGr6p8PaqI2P
	w+bNz+JPWrrWBhjUeqdj63wHkMnrthtOJv2rB/4pLe4HGSuOClSNMZ1cgjGipbzenKD7
	GavQ==
X-Gm-Message-State: AOAM532QD/Wx2fzHBgAcm0gHciOBSJylPA7935oZB0jRw2f9bZRzohj6
	FtAI5nkgiLAsvDP2W2bTr97W7wlzUwR1zW+1
X-Google-Smtp-Source: ABdhPJxFm+AUrth/hWbIoBLgdt0HLN/uEraLbIGiPj9ZMergcuKklgLGOw56f/+ET+49BNx0/FQnFQ==
X-Received: by 2002:a1c:f613:: with SMTP id w19mr23228289wmc.58.1642344774612; 
	Sun, 16 Jan 2022 06:52:54 -0800 (PST)
Received: from [192.168.178.28]
	(dynamic-078-055-227-191.78.55.pool.telefonica.de. [78.55.227.191])
	by smtp.gmail.com with ESMTPSA id o4sm5991441wmq.41.2022.01.16.06.52.53
	for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Sun, 16 Jan 2022 06:52:54 -0800 (PST)
Subject: Re: Linux Mint cinnamon applications menu?
To: blinux-list@redhat.com
References: <2D4CFA3F-CF9B-42FA-997E-01F67B566200@icloud.com>
	<e8a644ce-be91-1c7-652-6587d822d4b@panix.com>
Message-ID: <14e2b527-b017-563e-3510-ac43051a8930@googlemail.com>
Date: Sun, 16 Jan 2022 15:52:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Firefox/68.0 SeaMonkey/2.53.10.2
MIME-Version: 1.0
In-Reply-To: <e8a644ce-be91-1c7-652-6587d822d4b@panix.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.85 on 10.11.54.8
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

Hello,
in Cinnamon simply the super key opens the start menu but Cinnamon is 
not so well like Mint with mate desktop.
Greetings,
Wolfram

Am 16.01.22 um 06:56 schrieb Linux for blind general discussion:
> Try super-a.  Super in this case is between the control and alt key.
>
> On Sat, 15 Jan 2022, Linux for blind general discussion wrote:
>
>> Dear List,
>> I have another question.
>> Using Linux Mint cinnamon, Pressing alt+F1 will not show the applications menu, is there another hot key?
>> Thanks,
>> Rob
>>
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

