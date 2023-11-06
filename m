Return-Path: <blinux-list+bncBCVPTHE7K4INT6NBVIDBUBGIVL2UK@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mail.lfdr.de (Postfix) with ESMTPS id AEDA37E19B0
	for <lists+blinux-list@lfdr.de>; Mon,  6 Nov 2023 06:42:51 +0100 (CET)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-41cb7c104ddsf45573371cf.0
        for <lists+blinux-list@lfdr.de>; Sun, 05 Nov 2023 21:42:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699249370; x=1699854170;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1MZ6fngZYk1UFh7HIGeZTbqEy9Fnlz2/smsFEB4opxw=;
        b=SpOVL/w3KbfcgeidMt5GzKIodFSAxuEqQ7ufOgxzTM4yEhkf7szWmasjCOvAu6iEK3
         Ueqg4MKwikdKdmpkO13xQPE9pO5Wk/Tz1uBo2QBQMI8zosAx7YllfMdGJgghf9KuXrM7
         sFyJIQ+rBmhmCsDsOB5tuwTvKsO7KyiaaYrepPedbH6uPluSx8D/W5pzDbY8bexPhaKa
         TAH2GtADtmQIi+Ohe/Hd0ze71JVr6OzGg8MfGAhs8Uj4nl1sKUkCznaPKZ+CCwT6F/hC
         QBA2j6S8uRa4GVTBH0LyE9JogS9RRaZgGyOVUaxQItvbH2PSeAQWL2G9Ayo6uWIIwYoZ
         uucA==
X-Gm-Message-State: AOJu0YwkeR7wn8WTFKVRCsSo84222Gc0Uk4eNzOZ3lWFfhaeOZ3O5WWS
	YF2bo08Did/t6rZldVTc2xZCFQ==
X-Google-Smtp-Source: AGHT+IGMYsE85FkezOZGswtDsnHLfvVLCWBTKb/Da5LWZ8IRaA7O4mJmirGFbS8YoGei4KwHhc9aLA==
X-Received: by 2002:ac8:5d88:0:b0:41c:dc6c:c86f with SMTP id d8-20020ac85d88000000b0041cdc6cc86fmr36807586qtx.47.1699249370183;
        Sun, 05 Nov 2023 21:42:50 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:622a:1206:b0:41b:5e46:aa61 with SMTP id
 y6-20020a05622a120600b0041b5e46aa61ls2980712qtx.1.-pod-prod-02-us; Sun, 05
 Nov 2023 21:42:49 -0800 (PST)
X-Received: by 2002:a05:620a:4889:b0:778:8b39:166e with SMTP id ea9-20020a05620a488900b007788b39166emr30241274qkb.20.1699249369254;
        Sun, 05 Nov 2023 21:42:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699249369; cv=none;
        d=google.com; s=arc-20160816;
        b=v3dVYrcEINnZFMJ2SwEixamYHaGPWk3fhByeH5DCwN4KpJ+1OAaabRgFKQiziwuNvB
         9KO75iWmVbVg1gQ2IRiRHSMZ9q27bJlEIjYB4PEX8G8FLSJQR1ipt5I6EJKfspLqDHK4
         z0FhBxQYnN0itzjgG0MxgeSxqWNq3DH75tJaWp3RIEicgeuDZcWMRK+l68dtPhLQpW/R
         tktNZ4dpYJHtunOqMn6BFHAwcTzfexO1ywJG5OMNKHUjY4caFRT3Ls8Q7+H2zHfaEXS+
         NUjoi/mqV5/yG1mlL0GyvynPfXstnjT6kfgmbke+kKAwFqStoSj+ySBxtWrQ8N5QIxZu
         P/dQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=1MZ6fngZYk1UFh7HIGeZTbqEy9Fnlz2/smsFEB4opxw=;
        fh=IcqJJD4qaK8LzzaTBE8+DA5eDqYnBzlACt7lWP+7qqY=;
        b=oTcy9D3yrHANXTUTD5gGyoCtQ7fI2b13paCXvxpw6Wp0v1RCPA04yEMfXdJyqnFFT5
         nPajpKptQU1B+OtBnDx0cM+cyIpQDCWDkmvHF0M8qaH67sAachft2UiujPxih1+sUEAJ
         1VioL9/xcf07e6Y2ez/zOIMkdHj0Z53Ftgjaz3SkLoo6CIj0NeOnpSyrDkYUlIaGbDBl
         JzseKI2vtaxWB4Q8EknjIv3zaGHzUMWZyUjgxtTfiRaNAwyPc0Y75VgDoTW+UQLEPTF0
         9d0niu9ikDbfyyzJP2PM6mSiMgtzmhtjmXkSLoc75ITddU9rOF2gs3Ijl8GzMubcJZmi
         aDJA==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id c24-20020a05620a165800b007788b96f13esi4869613qko.515.2023.11.05.21.42.48
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Nov 2023 21:42:49 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-142-_k9g3Dm0M8eR88HWV8sSnQ-1; Mon, 06 Nov 2023 00:42:47 -0500
X-MC-Unique: _k9g3Dm0M8eR88HWV8sSnQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.rdu2.redhat.com [10.11.54.4])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 398FD8371DC
	for <blinux-list@gapps.redhat.com>; Mon,  6 Nov 2023 05:42:47 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3614E2027047; Mon,  6 Nov 2023 05:42:47 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast02.extmail.prod.ext.rdu2.redhat.com [10.11.55.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 2E9272026D37
	for <blinux-list@redhat.com>; Mon,  6 Nov 2023 05:42:47 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [207.211.31.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 1204E8371D6
	for <blinux-list@redhat.com>; Mon,  6 Nov 2023 05:42:47 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-615-ygGQqexTP4qL9wmMZytzSw-1; Mon,
 06 Nov 2023 00:42:41 -0500
X-MC-Unique: ygGQqexTP4qL9wmMZytzSw-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 2E5F440508;
	Mon,  6 Nov 2023 00:42:41 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id F1F781001C0; Mon,  6 Nov 2023 00:42:40 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id F0938100056;
	Mon,  6 Nov 2023 00:42:40 -0500 (EST)
Date: Mon, 6 Nov 2023 00:42:40 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: guenter <GuenterK@gmx.net>
cc: blinux-list@redhat.com
Subject: Re: seeking a sftp site to test a problem?
In-Reply-To: <92f1ed04-46ae-4c8f-b62a-a64ea872c617@gmx.net>
Message-ID: <Pine.LNX.4.64.2311060042010.3252872@users.shellworld.net>
References: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
 <92f1ed04-46ae-4c8f-b62a-a64ea872c617@gmx.net>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.4
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

I case I did not say thanks before.
Hopefully I shared the issue may be a client bug.
  Best,
Kare



On Fri, 27 Oct 2023, guenter wrote:

> Hi Karen!
>
> List of public sftp servers (for testing):
> https://www.sftp.net/public-online-sftp-servers
>
> HTH,
>  guenter
> --
> .
>
> -- 
> You received this message because you are subscribed to the Google Groups 
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.
>
>
>

