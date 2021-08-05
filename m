Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id E32723E12EA
	for <lists+blinux-list@lfdr.de>; Thu,  5 Aug 2021 12:45:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1628160304;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=YUFIR9ZQMBLePeBw1cwmpmQoVZsZs3jKQkW1VntOBAI=;
	b=BX1Q9/sz0DffPCPb1VBkL/cldS8matG+WnDo38niMehAvXMsZxuMgx7ibVvSkWa9/XS7s0
	UOkQamqNeAxQ0y9yIyRJrS6h/dkjML0rNqBOzFOrsbbdFQ2oDGeovfblq6utl3O4/h6g3y
	qA77rCbCqGqGFT0SLjqltIIr1V0WBTM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-572-m1TPqeU7MyCzgFobBX0isQ-1; Thu, 05 Aug 2021 06:45:03 -0400
X-MC-Unique: m1TPqeU7MyCzgFobBX0isQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A2EA4180CA04;
	Thu,  5 Aug 2021 10:44:59 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id EF2C067899;
	Thu,  5 Aug 2021 10:44:56 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 0F1F74BB7C;
	Thu,  5 Aug 2021 10:44:53 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 175Aik9T024708 for <blinux-list@listman.util.phx.redhat.com>;
	Thu, 5 Aug 2021 06:44:46 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 5EA571112843; Thu,  5 Aug 2021 10:44:46 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 550F91112846
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 10:44:42 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-1.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
	bits)) (No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 08DD78007B1
	for <blinux-list@redhat.com>; Thu,  5 Aug 2021 10:44:42 +0000 (UTC)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-563-1E-uWiLvNPy1ViL7Y_e-aw-1; Thu, 05 Aug 2021 06:44:40 -0400
X-MC-Unique: 1E-uWiLvNPy1ViL7Y_e-aw-1
Received: by mail-oi1-f181.google.com with SMTP id bh26so5215806oib.10
	for <blinux-list@redhat.com>; Thu, 05 Aug 2021 03:44:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:content-transfer-encoding:mime-version
	:subject:date:references:to:in-reply-to:message-id;
	bh=AoNmzUqtPmhzCEgPlMZhv2q8F1mXIc4zNNtHnxXsKB4=;
	b=HSrDXAiqN030DfCKhSYc3y0GQ0EDTzVL1flaRisJt//HR9VGNR8kz5wYcztMXXq7wb
	QwYc+ncwMU1mq2Etle9oGccpxyuAifYJzHzYIEGOHrjkq6Xo6u1E/IY2PY5bglhUGpx6
	52y1ORP0NzOYVA6HEEZBvTgx3dA0kslckvlWa6z4uevHYHQon5kXxcyuGe/A3NH0jS1A
	p+AKlEEzhOm7zsuvnW3uIErf80gL+S6RqmPrnInMb0l2UKmbUly9j+KlNgjSLPr/szgx
	NCoKEAwdD1dOXTcc/8RcbUHJZFp36TYK97rPBD1INTQHvIvWI0hylOM9iwaqnZTHnQTD
	Tepw==
X-Gm-Message-State: AOAM533WG1IU6ma/O7UJ1GxPAI6QDa8U5aNbVPjgg72fys1O4JxZtkfS
	Z5VBrNhCsvlIFRRJDdjAj9H6Q3a/dqk=
X-Google-Smtp-Source: ABdhPJy2MfY6MKiqorwwwQ4Fsc3vxAjJd7FKtNCAYZIR+i2FohEx00CZu1xhUDSLwIPedWc7m6Q5iw==
X-Received: by 2002:a05:6808:3d9:: with SMTP id
	o25mr3111109oie.140.1628160279067; 
	Thu, 05 Aug 2021 03:44:39 -0700 (PDT)
Received: from smtpclient.apple ([2601:3c2:8200:9360:c920:788:8fb4:1add])
	by smtp.gmail.com with ESMTPSA id 65sm508201ooc.2.2021.08.05.03.44.38
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 05 Aug 2021 03:44:38 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.100.0.2.22\))
Subject: Re: Solus DE observations
Date: Thu, 5 Aug 2021 05:44:37 -0500
References: <3c0f9041-d6e9-5fb5-2e9c-a96dc59bd86c@gmail.com>
	<7b4a0e8e-f7b2-af91-975c-d3ca3a3cbdcf@gmail.com>
	<76FFA217-1F68-444A-8DB7-C465759CD123@gmail.com>
	<fd407fcb-4241-4fd6-49e8-bd25a69f3348@gmail.com>
	<DC07B063-C1B9-49B0-89BA-7F340746AB3D@gmail.com>
	<57bd933a-c517-2ec6-0f1e-716e4a81908b@gmail.com>
	<4020EC8C-BE9D-4ABC-A1B6-EFDCB9F261ED@gmail.com>
	<2a58e6d9-54c9-8d66-7433-aebc6fcf687c@gmail.com>
	<229F2558-87BD-4F2F-907D-218C2D542480@gmail.com>
	<507fd0d3-4aa0-dabf-c080-90bb0775dfa5@gmail.com>
	<dfd09fe5-f568-1553-82a5-650ab234b84d@gmail.com>
	<da3aefc4-efce-2540-9eba-d6ddbd0a6c7e@gmail.com>
	<96BBED50-5B5B-4EED-B882-7CC419DE9B36@gmail.com>
	<224c29c2-1089-4113-ffce-ce3096c1c6c5@gmail.com>
	<EA5E1F3E-DE2D-46DB-B69F-D48C0CE6E337@gmail.com>
	<alpine.NEB.2.23.451.2108042232001.28896@panix1.panix.com>
	<7e5f4449-cd33-89d0-7b47-f4b0bfd8305c@gmail.com>
To: Linux for blind general discussion <blinux-list@redhat.com>
In-Reply-To: <7e5f4449-cd33-89d0-7b47-f4b0bfd8305c@gmail.com>
Message-Id: <D1025993-30AE-456A-90E3-50016E5A496B@gmail.com>
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection
	Definition; Similar Internal Domain=false;
	Similar Monitored External Domain=false;
	Custom External Domain=false; Mimecast External Domain=false;
	Newly Observed Domain=false; Internal User Name=false;
	Custom Display Name List=false; Reply-to Address Mismatch=false;
	Targeted Threat Dictionary=false;
	Mimecast Threat Dictionary=false; Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 2.78 on 10.11.54.3
X-MIME-Autoconverted: from quoted-printable to 8bit by
	lists01.pubmisc.prod.ext.phx2.redhat.com id 175Aik9T024708
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Thank you.
Had you discovered that by accident?

> On Aug 5, 2021, at 2:08 AM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
> 
> Budgie does.
> 
> Ctrl+alt+del then tab once and enter to shut down when all windows are closed
> 
> On 8/5/21 3:32 AM, Linux for blind general discussion wrote:
>> You could try poweroff once in the terminal.
>> 
>> 
>> On Wed, 4 Aug 2021, Linux for blind general discussion wrote:
>> 
>>> I shut down by going in to terminal, and typed
>>> reboot
>>> and that did it.
>>> I am sure budgie has some key shortcut for shutting down.
>>> 
>>>> On Aug 4, 2021, at 7:30 PM, Linux for blind general discussion <blinux-list@redhat.com> wrote:
>>>> 
>>>> You could hit the power-off button, and it will ask what you want to do.
>>>> 
>>>> 
>>>> --  Dave  --
>>>> 
>>>> 
>>>> 
>>>> Sent from my Lenovo Thinkpad, running Slint GNU/Linux.  https://slint.fr for info
>>>> 
>>>> On 8/4/21 7:52 PM, Linux for blind general discussion wrote:
>>>>> A very basic question, how may I shutdown or restart a budgie system?
>>>> _______________________________________________
>>>> Blinux-list mailing list
>>>> Blinux-list@redhat.com
>>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>>> _______________________________________________
>>> Blinux-list mailing list
>>> Blinux-list@redhat.com
>>> https://listman.redhat.com/mailman/listinfo/blinux-list
>>> 
>>> 
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://listman.redhat.com/mailman/listinfo/blinux-list
>> 
> 
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://listman.redhat.com/mailman/listinfo/blinux-list
> 


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

