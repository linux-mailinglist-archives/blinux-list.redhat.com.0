Return-Path: <blinux-list+bncBCVPTHE7K4IKF647VMDBUBB5PI676@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-yb1-f198.google.com (mail-yb1-f198.google.com [209.85.219.198])
	by mail.lfdr.de (Postfix) with ESMTPS id 18C117FE78E
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 04:12:36 +0100 (CET)
Received: by mail-yb1-f198.google.com with SMTP id 3f1490d57ef6-db401df7735sf631144276.3
        for <lists+blinux-list@lfdr.de>; Wed, 29 Nov 2023 19:12:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701313955; x=1701918755;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MEyJj/S3kcphOHx3DxQyI/fs6n7O3BMaXvbHKVmW75A=;
        b=fCnBTkpWriAP+RyF+rXLsE6kgI8iQNt11xHUh5i3+nAr30AlzBGZnk5Vgmolfn0R44
         u45AKpqPIZxpuz+XKKVpiflU/SpzOB7WuTp30uyZd4lJZdEZ76d8uV/ELeQAiAac2oMQ
         TzyfvyJ99hDupSulETciwtu0N0Bxp0QlYmOBerAXVwvybLUFwf1+PCAjE83wVW9XtVE3
         Yp4efPwj227kip3wgcoLwgnZH69JihqLC6mqn+F2FHYmkBUy6PjGAxyExlCZFTi4ueyS
         QwGjvHIjfR2ac2D2ytaj1PwuW6eBa4EWQEdU6TOlrW08jCffKBYpCW5y11I96ZrTcJh7
         b2+A==
X-Gm-Message-State: AOJu0YyjZHB0dSdGt5KcTqi291iEWMjoBL2UJUcyWcaKNO/mL9Qt2ugz
	eX3FWVaQyKGM33+BwuKCOiOAaA==
X-Google-Smtp-Source: AGHT+IHcPB6H5SnQ44DsFZ1tXpx/B7yTdbfG8eA7X4pLzlQUxnKU2J4ejJXvquBCBBYtBo6d7rT53A==
X-Received: by 2002:a25:4c81:0:b0:d9a:bddd:f714 with SMTP id z123-20020a254c81000000b00d9abdddf714mr17462857yba.9.1701313954815;
        Wed, 29 Nov 2023 19:12:34 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a25:7e81:0:b0:d9c:d601:606e with SMTP id z123-20020a257e81000000b00d9cd601606els531063ybc.0.-pod-prod-02-us;
 Wed, 29 Nov 2023 19:12:34 -0800 (PST)
X-Received: by 2002:a25:ae8f:0:b0:da0:4576:3689 with SMTP id b15-20020a25ae8f000000b00da045763689mr20375307ybj.25.1701313954154;
        Wed, 29 Nov 2023 19:12:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701313954; cv=none;
        d=google.com; s=arc-20160816;
        b=DCyYPOKWZ9tmzBPTE1IHhRkJ0omwvRPk8Jc6A3cKJPEQkJiXZPKoXil1k8JqqMH0gP
         VO+ZNsuwvawQNOnlLo+QhZOUMuJjP1q3MxDOlm3KS55kojOi6sOqu6f58DQ7jiloUC+I
         Uk2KmHbbyiLoLjC/cyMHDLca0+7KeIBM6C2M8ONJBwsHZILMdfkAsqQbkTamqYEKUWaX
         bX53BpLp2fHCcvJ4sazRSuNb1YAxbALeyojK66QzEcZy0jAb0GrLqrOWaPmX4PvfmIg4
         uvEfvQ6PxZ5yEv5UAY/FRF8q7ERaRqHg8ucXnqf8HkHs53AAW8YFRAZV7mrapdc4KVU2
         TPdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=MEyJj/S3kcphOHx3DxQyI/fs6n7O3BMaXvbHKVmW75A=;
        fh=ZIdLSMhC7UZxz6Ja8AluQcLdIWgyQrLKfBs0+lxMwo4=;
        b=Ctwbv+Tb2Vde6dOt0uvMFMrebbN3hc4Oh+URxrygyi60/2J6C74L/GaOV9QXiiiD5Q
         5+cJj4K6xQASaT6InBP7l5OAz57blgnQgAMOFMMbdD9GnLXHe+p/jo12N/18Y5XxzTTn
         4G8AayOnleagUgFVvbVcutpJe7bHWuPrLJHqDvsGlqcJkDVjUjAa4Ym+qkPUP7LzjpbT
         eYbxm6d9h/eX0kiNASj8H1XyPG7OsWkSZEfZFKTA4VKIj+gyUr0/x8HH6GFRvGjTJBI9
         sydhOxqZWCXJDEsaT2KRQP4piFyEf0LwQ/8yuwxiPevEXIrlvhDIr2EYLOfZd9v+qEQa
         QMog==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id e5-20020ad44425000000b0067800f020fesi145667qvt.481.2023.11.29.19.12.33
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Nov 2023 19:12:34 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-354-QQI-zmKTNziHsWUntnz4uA-1; Wed, 29 Nov 2023 22:12:31 -0500
X-MC-Unique: QQI-zmKTNziHsWUntnz4uA-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 9AD79101A529
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 03:12:31 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 9744C2166B27; Thu, 30 Nov 2023 03:12:31 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 8F14D2166B26
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 03:12:31 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 72341811E8D
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 03:12:31 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-433-FLpQ7KeUPRmMgihrt8xwhQ-1; Wed,
 29 Nov 2023 22:12:29 -0500
X-MC-Unique: FLpQ7KeUPRmMgihrt8xwhQ-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 1B36044FC7;
	Wed, 29 Nov 2023 22:12:29 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id DAE571001B8; Wed, 29 Nov 2023 22:12:28 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id D94A91001AA;
	Wed, 29 Nov 2023 22:12:28 -0500 (EST)
Date: Wed, 29 Nov 2023 22:12:28 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Tim Chase <blinux.list@thechases.com>
cc: blinux-list@redhat.com
Subject: Re: quick links are numbered question?
In-Reply-To: <ZWf5u3-coC0PloSY@thechases.com>
Message-ID: <Pine.LNX.4.64.2311292211510.3720159@users.shellworld.net>
References: <Pine.LNX.4.64.2311292019330.3718624@users.shellworld.net>
 <ZWf5u3-coC0PloSY@thechases.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.6
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: shellworld.net
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Original-Sender: klewellen@shellworld.net
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of klewellen@shellworld.net designates 23.24.6.165 as permitted
 sender) smtp.mailfrom=klewellen@shellworld.net
Precedence: list
Mailing-list: list blinux-list@redhat.com; contact blinux-list+owners@redhat.com
List-ID: <blinux-list.redhat.com>
X-Spam-Checked-In-Group: blinux-list@redhat.com
X-Google-Group-Id: 304886998071
List-Post: <https://groups.google.com/a/redhat.com/group/blinux-list/post>, <mailto:blinux-list@redhat.com>
List-Help: <https://support.google.com/a/redhat.com/bin/topic.py?topic=25838>, <mailto:blinux-list+help@redhat.com>
List-Archive: <https://groups.google.com/a/redhat.com/group/blinux-list/>
List-Unsubscribe: <mailto:googlegroups-manage+304886998071+unsubscribe@googlegroups.com>,
 <https://groups.google.com/a/redhat.com/group/blinux-list/subscribe>

That did it, thanks Tim!
Karen



On Wed, 29 Nov 2023, Tim Chase wrote:

> Tim here.
>
> I'm not sure there's a direct command-line option, but alt+v for
> the View menu, "o" for "HTML Options", the fourth checkbox I have
> has "Links are numbered".  Pressing space on that turns them on,
> then hitting Enter accepts the settings.  If you want to preserve
> them, you can go back in to alt+v (View), then "a" to "Save Options"
>
> Doing this puts the following line (along with other HTML settings)
>
>  html_numbered_links 1
>
> in your ~/.links/html.cfg file.
>
> So you could jocky the setting in that file before launching links
> if you want.
>
> -tim
>
> On 2023-11-29 20:21, Karen Lewellen wrote:
>> Hi folks,
>> for those using links the chain, there is a command line option that turns
>> on  links are numbered.
>> Can someone remind me of the keystroke?
>> Thanks,
>> Karen
>>
>>
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

