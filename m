Return-Path: <blinux-list-bounces@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [63.128.21.124])
	by mail.lfdr.de (Postfix) with ESMTP id 4750A2E8347
	for <lists+blinux-list@lfdr.de>; Fri,  1 Jan 2021 08:18:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1609485522;
	h=from:from:sender:sender:reply-to:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post;
	bh=HGZmFpaLEsLtoGv3jMQ+ANYPq4ZscrHbu9yhNxkLwvY=;
	b=KauvTHEnyvs6fUJZjMYY8g9nis4YzWVPvI3wvPw/+E9DbpyTKjt7pWleo+tRVZiDGTV2Qj
	4LWT5/cJW7fdBhOn6RxSC1kzPeh+I2Mrb5Zptbf/O+Igf+sLw7cdKbLPwO4vwEIEQ339bq
	xUWJfeo7qHf3FvaePyhRocGCDqseT70=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-196-_zkAslxsPoiiXxjyKQVFCQ-1; Fri, 01 Jan 2021 02:18:40 -0500
X-MC-Unique: _zkAslxsPoiiXxjyKQVFCQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com [10.5.11.16])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1C0D1107ACE3;
	Fri,  1 Jan 2021 07:18:35 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id CDE975C230;
	Fri,  1 Jan 2021 07:18:28 +0000 (UTC)
Received: from lists01.pubmisc.prod.ext.phx2.redhat.com (lists01.pubmisc.prod.ext.phx2.redhat.com [10.5.19.33])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 7831618095FF;
	Fri,  1 Jan 2021 07:18:14 +0000 (UTC)
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.rdu2.redhat.com
	[10.11.54.3])
	by lists01.pubmisc.prod.ext.phx2.redhat.com (8.13.8/8.13.8) with ESMTP
	id 1017I4rv006383 for <blinux-list@listman.util.phx.redhat.com>;
	Fri, 1 Jan 2021 02:18:04 -0500
Received: by smtp.corp.redhat.com (Postfix)
	id 41FE0110F73D; Fri,  1 Jan 2021 07:18:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com
	(mimecast06.extmail.prod.ext.rdu2.redhat.com [10.11.55.22])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 3DEBE110F73C
	for <blinux-list@redhat.com>; Fri,  1 Jan 2021 07:18:02 +0000 (UTC)
Received: from us-smtp-1.mimecast.com (us-smtp-2.mimecast.com [207.211.31.81])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1A131185A794
	for <blinux-list@redhat.com>; Fri,  1 Jan 2021 07:18:02 +0000 (UTC)
Received: from mail-pg1-f178.google.com (mail-pg1-f178.google.com
	[209.85.215.178]) (Using TLS) by relay.mimecast.com with ESMTP id
	us-mta-543-OgnvDZiEO_SXwISPMXJsWA-1; Fri, 01 Jan 2021 02:18:00 -0500
X-MC-Unique: OgnvDZiEO_SXwISPMXJsWA-1
Received: by mail-pg1-f178.google.com with SMTP id z21so14195712pgj.4
	for <blinux-list@redhat.com>; Thu, 31 Dec 2020 23:17:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=+5fe4g9kGOv4lxxwLELbN+QbC9fWVcCHzKvK5Gz9abw=;
	b=GXBCcHabaQcXNHN3PMRzEqULReK5cvleDIftYthm5x+iNlBw6ueajCojJWDSqMrxsK
	kfBUeW/z5ZUnNNn6rKVZ4XXYgyAdnJT925g96kEScOXf6lFdLkwU7qk0ve+z/JcZNY2D
	6kKAq7ztqN+IfsMWNcjnPY4HFq5eorC6GI9pZrRbVTj4/nbeJnULfi/CbATJ4FbWTP51
	Xw3TcIiXewWcnPeMWzuwVI5lm6dyEq6jc7ZoE5yrjA9zCh8ol1MhtF2vW6YmmT2LlKKY
	q4fcCwCbu/UH/GUxFTyzovzlU646OJcTXtrAFnxsHJjwCGbk+T5w8plWpSS49MDEvABV
	yF/Q==
X-Gm-Message-State: AOAM533wCHObpfaAptrf96erW3xm/6YV4sHxDqnKnynRA1PTnHxz1BOj
	7a3qbkgq/6CGz1nqfzvBCPptJ57BYwgAzw==
X-Google-Smtp-Source: ABdhPJw8NVAhcubG3VLcMbWBBX8qrBBOib/7fthlAJin/waBxHB7yNzRzOBjM9W5RwZGClHoqILv7A==
X-Received: by 2002:a63:24c4:: with SMTP id
	k187mr12189812pgk.238.1609485478708; 
	Thu, 31 Dec 2020 23:17:58 -0800 (PST)
Received: from [10.109.0.190] ([45.56.150.132])
	by smtp.gmail.com with ESMTPSA id
	f7sm12718307pjs.25.2020.12.31.23.17.57 for <blinux-list@redhat.com>
	(version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
	Thu, 31 Dec 2020 23:17:58 -0800 (PST)
Subject: Re: Remote Desktop Under Linux
To: Linux for blind general discussion <blinux-list@redhat.com>
References: <2e9e01d6dfbf$56add9f0$04098dd0$@kellford.com>
	<20201231163535.72cc6332@bigbox.attlocal.net>
Message-ID: <413a93bc-060e-e8f7-21b0-54d9e0c06e21@gmail.com>
Date: Fri, 1 Jan 2021 00:17:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
	Thunderbird/78.6.0
MIME-Version: 1.0
In-Reply-To: <20201231163535.72cc6332@bigbox.attlocal.net>
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"

what rdp client would you suggest?

On 12/31/2020 3:35 PM, Linux for blind general discussion wrote:
> Tim here.  There are multiple ways to do remote access of which
> Remote Desktop (RDP) is only one of them.  I've never tried to use
> RDP to serve my Linux/BSD machines' GUI to another (Windows or
> otherwise) machine.  However, I can confirm that if you're sitting at
> the Linux/BSD machine, you can use RDP to access a remote Windows
> machine.  However, accessibility may vary if you need access to
> underlying accessibility data that a screen-reader might use.
>
> For accessing a Linux/BSD machine's GUI from another machine, the two
> most common ways I've encountered are to use VNC or to forward the X
> protocol.  For the former, you'd install something like the
> "tightvncserver" package on the Linux machine and install a VNC
> viewer on your local machine.  You can then connect to it from your
> local machine.  Note that this might leave your VNC/GUI login prompt
> up for others to hammer on, so I'd either enable it via SSH manually
> as-needed, or set up a secure tunnel (either a SSH tunnel or a VPN
> tunnel) to the machine and ensure that VNC only listens on localhost.
>
> In a similar fashion, if you have a local X server, you can use ssh's
> "-X" parameter tunnel to the remote machine and open windows on your
> local machine desktop. For example, issuing
>
>    local$ ssh -X user@remote.example.com
>
> creates a virtual X connection on the remote server, and then when
> SSH'ed into that machine, I can launch programs there that display
> locally such as:
>
>    user@remote$ xcalc
>
> Again, accessibility for either of them may be limited to the
> graphics, so a screen-reader might face difficulty.  But a
> screen-magnifier should still be of assistance.
>
> Hope this helps,
>
> -tim
>
>
>
> On December 31, 2020, Linux for blind general discussion wrote:
>> Hi,
>>
>>   
>>
>> I have my ssh access and local GUI desktop working for my Linux
>> machine quite well.  I also have ssh access to a Linux machine on
>> the Microsoft Azure service working.
>>
>>   
>>
>> Before I go down the path of trying to get remote desktop access to
>> the GUI, does this actually work.
>>
>>   
>>
>> The article at Linux - Microsoft Azure
>> <https://portal.azure.com/#@kellykellford.onmicrosoft.com/resource/subscript
>> ions/968d4c66-18eb-48df-87b5-6d1918a03749/resourceGroups/linux/providers/Mic
>> rosoft.Compute/virtualMachines/linux/connect>  has details on what
>> you need to do to connect to the GUI for a machine running on
>> Azure.  I am hoping to use the Windows RDP client to connect and
>> just get the Gnome audio.  I know it won't be perfect.
>>
>>   
>>
>> If this does actually work, does anyone know the syntax to tell the
>> XRDP service on the Linux machine to use Gnome as the desktop
>> session?  The article shows this command but it is for a different
>> desktop.
>>
>>   
>>
>> Tell xrdp what desktop environment to use when you start your
>> session. Configure xrdp to use xfce as your desktop environment as
>> follows:
>>
>>   
>>
>> echo xfce4-session >~/.xsession
>>
>> Restart the xrdp service for the changes to take effect as follows:
>>
>> sudo service xrdp restart
>>
>>   
>>
>> Also, thanks for the answers to my other questions here.  I haven't
>> contributed much here but will offer one tidbit, on the off chance
>> anyone here is trying to use Microsoft Teams on Linux.  You have to
>> start the Linux version of Teams with the additional command line of
>> -force-renderer-accessibility.  This instructs Chrome and software
>> using Chromium, to ensure things go through the accessibility API.
>> If you don't, Orca won't read anything when Teams loads.  If you do
>> add this, Teams works fairly similar to how it does on other
>> platforms.
>>
>>   
>>
>> I know I do not post here often so in full disclosure, my day job
>> is working for Microsoft running  a service known as the enterprise
>> Disability Answer Desk that works to resolve accessibility issues
>> for business, government, education and other enterprise customers.
>>   I've wanted to understand how our technology works on Linux, where
>> we have it available.
>>
>>   
>>
>> Kelly
>>
>> _______________________________________________
>> Blinux-list mailing list
>> Blinux-list@redhat.com
>> https://www.redhat.com/mailman/listinfo/blinux-list
>>
> _______________________________________________
> Blinux-list mailing list
> Blinux-list@redhat.com
> https://www.redhat.com/mailman/listinfo/blinux-list
>

_______________________________________________
Blinux-list mailing list
Blinux-list@redhat.com
https://www.redhat.com/mailman/listinfo/blinux-list

