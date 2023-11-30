Return-Path: <blinux-list+bncBCVPTHE7K4IMTG5DVMDBUBALCONCQ@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-ot1-f70.google.com (mail-ot1-f70.google.com [209.85.210.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 714117FF8F5
	for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 19:00:43 +0100 (CET)
Received: by mail-ot1-f70.google.com with SMTP id 46e09a7af769-6d7e76ce1c1sf263789a34.0
        for <lists+blinux-list@lfdr.de>; Thu, 30 Nov 2023 10:00:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701367242; x=1701972042;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+INB9BxSx3qlaBCmzRnbGwx4Rx/oXLyVj6grz5vtmyM=;
        b=Izz7NlHcMKq3UUX0kpwGUz/LLl6/uz7SVpNkIO/h55t/Spov0Gh35hKlPQP5aHWKq0
         QXQgry2LQdA/6oAVU9m6BDs4OIcxZD5b+ix4meKU7KpHnKTa6sE2ffBUQAd5PFlJAyDV
         H/jrFyvAx7nZ9rOetsEPkipeAQ4KG5i6DUidV2b57zR2iEOQoTCCDjLDNRT1dXnZEkdO
         9loV2CQcxcHjXnYbUIGW3i+kCwKkzvTdGlbVHyojujWJXkQnUdJciIQAyyTF7ViXfYOm
         8BntyL6oJ2MUwPHCtIs8b6CeDr/4yiPJsmDjWlSuAHSEDGio9cMi3AyLhv0vHSL2ACmq
         rgCg==
X-Gm-Message-State: AOJu0YxE4y1nRAteG7/2G2znAh74MuoTv9cDBk7SEwjAhAhAf+aU3aTT
	/E2Z2e1AHL02yGrLAgTQXsruCg==
X-Google-Smtp-Source: AGHT+IFTcXx2jHyOXf5uAtXbdg0QVFy+/cv7LaoKyUXc33IaU5Tf1r7w3gI8gLV67Xpti3XUJPx/dw==
X-Received: by 2002:a9d:6203:0:b0:6b1:9646:2ea0 with SMTP id g3-20020a9d6203000000b006b196462ea0mr3069365otj.1.1701367241685;
        Thu, 30 Nov 2023 10:00:41 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:fc43:0:b0:67a:741a:bacb with SMTP id w3-20020a0cfc43000000b0067a741abacbls642473qvp.1.-pod-prod-01-us;
 Thu, 30 Nov 2023 10:00:40 -0800 (PST)
X-Received: by 2002:a05:6102:3a55:b0:464:4566:9c78 with SMTP id c21-20020a0561023a5500b0046445669c78mr7533691vsu.9.1701367240323;
        Thu, 30 Nov 2023 10:00:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1701367240; cv=none;
        d=google.com; s=arc-20160816;
        b=0IdabXcgy8B/xjbxgTJJvf85tcCPZ7F6Bt1DyfUTHlLdV3uak7AEVcRA+rNvxkBRV7
         9pFhyPBioHXHLtJAsDlg95nZwOck84TQAZCCMIJSPJzSlbREaEZxYz5P2L7cOK6QraRO
         Cvj/l9geLd2/bPP6AfWZGOrGAzOKI0ZulklWdR4hfedGBAAnvUPm0mQviUOrKrbT7qoE
         RejGKLQ3dp232mRA/gzDGGI9rn2ipi3NMGx6879jnUO74dmk3EgD02HatMci9IcnWpNv
         bf805Qgv9gGpfAYTJdunpbQ+Alndc75UT9IAZ35Jp4PGKzjhoRqLMujIbJBB6woMGCM0
         ym/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=+INB9BxSx3qlaBCmzRnbGwx4Rx/oXLyVj6grz5vtmyM=;
        fh=ZIdLSMhC7UZxz6Ja8AluQcLdIWgyQrLKfBs0+lxMwo4=;
        b=P9g4nHCTRNa39iltthL5uB31MHOQjSHd6IdFtZGE5rTHF/ubicnlcv0fZDDxjK/E4v
         aki9cCVkrAfsDtswdUFst9rnnRkeg8/6LvRabQr9akUMSrBT/UBsYg0YJ7mN2hy/Qk68
         qN+OqKnhaLLYwv9eAWTOeXMvCmr+OwjDx/r2EvvTTgkipGnSk6cpJt1dxwrM84M4ya6l
         JC5gVqacFyqRs0k8SaLWeOJ1DLrmotLpJ5YChYFxugfD36bWbhNE4umZ8JQBpcfthk9c
         9CJMES4XJmorlhFFlT/28JN/dkzDgcojArRKOXLJyPhncWBQl9dPjcIam44KNmCU8OEM
         Y2Kg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id n22-20020a67fb96000000b004627a2efec2si318363vsr.174.2023.11.30.10.00.39
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 10:00:39 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-264-YRusS_22M9qJNl0ygilReg-1; Thu, 30 Nov 2023 13:00:38 -0500
X-MC-Unique: YRusS_22M9qJNl0ygilReg-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.rdu2.redhat.com [10.11.54.8])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id E3A60887E43
	for <blinux-list@gapps.redhat.com>; Thu, 30 Nov 2023 18:00:37 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id E03E6C15983; Thu, 30 Nov 2023 18:00:37 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast05.extmail.prod.ext.rdu2.redhat.com [10.11.55.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id D934AC1596F
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 18:00:37 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id BD3EB8966A6
	for <blinux-list@redhat.com>; Thu, 30 Nov 2023 18:00:37 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-135-j-uliFd9NwOjoPl5moUl0Q-1; Thu,
 30 Nov 2023 13:00:28 -0500
X-MC-Unique: j-uliFd9NwOjoPl5moUl0Q-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 0944544FC7;
	Thu, 30 Nov 2023 13:00:28 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id C94EA1001B6; Thu, 30 Nov 2023 13:00:27 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id C90DF100094;
	Thu, 30 Nov 2023 13:00:27 -0500 (EST)
Date: Thu, 30 Nov 2023 13:00:27 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Tim Chase <blinux.list@thechases.com>
cc: blinux-list@redhat.com
Subject: Re: links the chain stinks!
In-Reply-To: <ZWjLX2UX4dsyL1C-@thechases.com>
Message-ID: <Pine.LNX.4.64.2311301258100.3728928@users.shellworld.net>
References: <5e6becb6-91ef-aa6b-1a07-af08c37a3f7a@panix.com>
 <ZWi9fsW48rqdh_os@thechases.com> <4c9524e6-3b94-f825-6fdb-bdb2997e5bb4@hubert-humphrey.com>
 <ZWjLX2UX4dsyL1C-@thechases.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.8
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

Not sure what the goal would be.
if I want to find something I use the slash find  feature.  takes me 
where I  wish to go on a page.
i do not believe I have ever used tab or shift tab to navigate anywhere.



On Thu, 30 Nov 2023, Tim Chase wrote:

> I wish I knew how to make Tab & shift+Tab work like in other browsers.  The up/down arrows navigate the links/fields, but I wish I could either use tab or the VI keys (j & k) to navigate.  Ah, well.
>
> -tim
>
>
> On 2023-11-30 09:07, Chime Hart wrote:
>> Well, thank you Tim, that works, and it seems to stay, but now can I make
>> the tab work like in other browsers-and-platforms? Thanks in advance
>> Chime
>>
>> --
>> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>>
>
> -- 
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

