Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by mail.lfdr.de (Postfix) with ESMTP id F228935B666
	for <lists+blinux-list@lfdr.de>; Sun, 11 Apr 2021 19:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618163540;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=vDY1EbRCao56EbR/x5+wUjmV7lzjvlAHroYQbFUWRzs=;
	b=SLckaE+oMrO6pkLyJLU8iM6xaiAKWqAZHifyqKU+bK6/4cPjdW8jEg6OHgszfgzP+1rApZ
	roQxZ8dx7FavNoOnU9j4L4Am/URrdiCj25rZudzDwAEY/sZ3PNq38rrIuyYEL32OOwEBKd
	g0XUY7+8cl07n9MpiPeJGp1ZxdwZu9g=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-174--9vRtcg6PYe-0Hx_a6_uFA-1; Sun, 11 Apr 2021 13:52:18 -0400
X-MC-Unique: -9vRtcg6PYe-0Hx_a6_uFA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6ED8810054F6;
	Sun, 11 Apr 2021 17:52:15 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B45141001B2C;
	Sun, 11 Apr 2021 17:52:14 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id D454E1806D0F;
	Sun, 11 Apr 2021 17:52:12 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com
	[10.11.54.5])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 13BHogJx013461 for <blinux-list@listman.util.phx.redhat.com>;
	Sun, 11 Apr 2021 13:50:42 -0400
Received: by smtp.corp.redhat.com (Postfix)
	id 0C37E34595; Sun, 11 Apr 2021 17:50:42 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 069F72ED99
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 17:50:39 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com
	[207.211.31.120])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 5D43385A5A8
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 17:50:39 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com
	[209.85.161.45]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-333-_34bHAI8OkGU1oFeiT3DNA-1; Sun, 11 Apr 2021 13:50:37 -0400
X-MC-Unique: _34bHAI8OkGU1oFeiT3DNA-1
Received: by mail-oo1-f45.google.com with SMTP id
	h2-20020a4ad7420000b02901e5901169a5so2317314oot.8
	for <blinux-list@redhat.com>; Sun, 11 Apr 2021 10:50:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:references:in-reply-to:subject:date
	:message-id:mime-version:content-transfer-encoding:thread-index
	:content-language;
	bh=l9aQwdG5v+UGJjNagLzuFJrHrq8csX8DoRcFX2MQAjY=;
	b=aR+kSgOSp1Cj2uehZ5b5MLC7RBTx5HUqswY1I44xhgXNcRwiAfIHuXdWcrd6hhfYWX
	pm+x5JWWhDr651jcDkLO0AVw9X+BsNj2iXm53Dof6Up9FjdOHcAzUADJI9wzJSatP1Rm
	L7y0hdRiX6r9WnMyEUUKVLkjkeTQQVUR2tsq+xYI21qwg3MtXY8tic0qmxqlTsYCXgZe
	JIu/DrcgkH2WBYJODMtDYH9zDw0ZkOZfhAaSVJhbRZ8OV5bWM74MHOqONZk4yH0y7Y8q
	TOBBB39tvZOLaycROwKTrNO5Txv+7b/Wmzm0pomTE9QtCBbFyl3USw+CpS/rf6XwRLV0
	i1nQ==
X-Gm-Message-State: AOAM533MeELo3zR6kP/9g4dFbW2lVRdAUqcI9SqTiGDziQy31AJidjIC
	oX82H1T46xJ9Rthmj6uliRHxeWTjPRO0UQ==
X-Google-Smtp-Source: ABdhPJygbr3dR60aCyTdmC73yDLvTvgOfRyCdxpIt0tIpWt6Ufb5JK9M/yiQ/jsowi7tPAq6N7DGYw==
X-Received: by 2002:a4a:e512:: with SMTP id r18mr20077887oot.40.1618163436358; 
	Sun, 11 Apr 2021 10:50:36 -0700 (PDT)
Received: from ElBraille ([2600:1702:20f0:4420:f159:22c0:8742:b833])
	by smtp.gmail.com with ESMTPSA id 40sm2071843otd.70.2021.04.11.10.50.35
	for <blinux-list@redhat.com>
	(version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 11 Apr 2021 10:50:35 -0700 (PDT)
To: <blinux-list@redhat.com>
References: <7b85da54-e7ac-7b50-0605-ad6c5456b58d@gmail.com>	<93B89B1D-82D0-4A12-ABF6-5A20BA3EAB8D@gmail.com>
	<42cd71c0-6d7d-4f8b-f428-7a96f42af69e@gmail.com>
In-Reply-To: <42cd71c0-6d7d-4f8b-f428-7a96f42af69e@gmail.com>
Subject: RE: Some questions about Arch Linux
Date: Sun, 11 Apr 2021 13:50:33 -0400
Message-ID: <01ac01d72efb$2c7f7ae0$857e70a0$@gmail.com>
MIME-Version: 1.0
Thread-Index: AQGSbnLCr3YWvcPATi5qXwFt2zjIJwHFfaBDAds1UharHBMqUA==
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
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=blinux-list-bounces@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-us
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit

Hi,

Did you install espeak-ng?  If not, do so.  After you install espeak-NG you
will want to make sure that espeak-ng is the default output module.  HTH.

Matthew



-----Original Message-----
From: blinux-list-bounces@redhat.com <blinux-list-bounces@redhat.com> On
Behalf Of Linux for blind general discussion
Sent: Sunday, April 11, 2021 11:09 AM
To: blinux-list@redhat.com
Subject: Re: Some questions about Arch Linux

Hello there,


It isn't a stupid question, trust me!

Yes, speech-dispatcher, pulseaudio, alsa-plugins and utils, espeakup, 
and some other stuff i don't remember, are installed, plus the gnome and 
mate desktops.

Best regards.

Francisco.

On 4/11/21 5:06 PM, Linux for blind general discussion wrote:
> As stupid a question as this may sound, did you install orca,
speech-dispatcher and espeak explicitly?  If you just installed orca, you
may not have everything.  Do you have a talking system with espeakup or
fenrir?  I hope you installed pulseaudio?
>
> Cheers,
>
> Dave H.
>
> Sent from my iPhone
>
>> On Apr 11, 2021, at 10:57 AM, Linux for blind general discussion
<blinux-list@redhat.com> wrote:
>>
>> I also modified the .xinitrc file at /etc/X11/xinit/xinitrc, since that's
the only one which is available, and I inserted the following lines at the
end of the file, after installing the system:
>>
>>
>> export GTK_MODULES=gail:atk-bridge
>> export GNOME_ACCESSIBILITY=1
>> export QT_ACCESSIBILITY=1
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


_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://listman.redhat.com/mailman/listinfo/blinux-list

