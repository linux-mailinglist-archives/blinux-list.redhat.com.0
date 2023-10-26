Return-Path: <blinux-list+bncBCVPTHE7K4IO7B7KVEDBUBHPBX6L6@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 618F87D85D9
	for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 17:21:21 +0200 (CEST)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-66d4aa946cesf15091746d6.1
        for <lists+blinux-list@lfdr.de>; Thu, 26 Oct 2023 08:21:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698333680; x=1698938480;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g68nZvjgjwhFbyXFU9Uh6541BMiItNE2Nti2bvr8deo=;
        b=QDLFf9vOs2CSuRfcJn+1UAnkrL8pGsfs/HSvUHUvFLIh4VEFbVcWlN7WIsx3UnzC/d
         0ukaeRrIdATTXSxU9IRLFiqaPqecrJvhJxtDIm0JoWRDHfHWwl/3FbMfsiYBOKpd61LO
         ZMXQQ6xAtTotifEVVHZAlv25vtTp0Tm9IyJMTw2wbalwwjcsyIcJnma9m9dZSmNdmzEH
         k/z0UlA6ovlyevHq1pU0rHaU5Id92/N08nCqE7GiR7IC1yhnCRYAscpOl4gPIRXQqU8F
         qfzNIQTj1trKVx82+lUAaGsJjvQEm4y5Ki5NzJjWyEP3vfHwwRS004/2ZR1s8OqrWfoa
         OfBA==
X-Gm-Message-State: AOJu0Yy5wY+xj10t3Zm4AQZmRQQaoyTTo2V1oIBTtnTrIufCqnyVb3L4
	3sWUPbEeNDtbaqZJgPwTXwqKlg==
X-Google-Smtp-Source: AGHT+IG3SFuD9uJYN/MAmO4WYRFrccbpT8pYtMLU1VC7vBMP3PxXYx21Ok04ZW6wagPUexbo9CSfNQ==
X-Received: by 2002:a05:6214:5b04:b0:65b:134:ed27 with SMTP id ma4-20020a0562145b0400b0065b0134ed27mr4157708qvb.4.1698333680061;
        Thu, 26 Oct 2023 08:21:20 -0700 (PDT)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:4985:b0:66c:ffc9:ab7f with SMTP id
 pf5-20020a056214498500b0066cffc9ab7fls114397qvb.2.-pod-prod-00-us; Thu, 26
 Oct 2023 08:21:19 -0700 (PDT)
X-Received: by 2002:a05:620a:25ce:b0:774:3442:1d72 with SMTP id y14-20020a05620a25ce00b0077434421d72mr3325180qko.39.1698333679185;
        Thu, 26 Oct 2023 08:21:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1698333679; cv=none;
        d=google.com; s=arc-20160816;
        b=hx/uE7UQAb3al8If/IRueSrlb4fpx9pDv/Qmm61mhSMBxTg/XXKoxz5uCPWUvytgpY
         pDxVuv82axkdzMotI/BM8zMcc41AB7chFptcZfG6/aOv15X1CezTQ+FIGC6O7Z+ImFQt
         LVIoHNpGebwcDQyuAxZ0hsFAlGkRd54f6FLYogoOa+UdVkZ1nAFm11y6DrOYuczoOYz7
         TZ+Q+N7aTeyWr3yz2SShxMRt7AMAjSW7Hd5MQ8TATpllRnMrhdnT+i4Rt84r6gEKT7VD
         MSW4pjJzM3CaXu1x0cnXT/gPOT8zho2HIAObBX3CYperiV5/Ls+le4dVzKEDtSojZTw9
         QBtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=g68nZvjgjwhFbyXFU9Uh6541BMiItNE2Nti2bvr8deo=;
        fh=34pETxOP6zukikDSKwNdtlAIFv1sHZwex9fvy872/44=;
        b=L2B3+8vBu9sbXnM9rZUbPK45gNt0GDdB+j5wyP66BkRKdolErTSVeVj3Eesbxb+Yg1
         iSH7NqcJZXjmK7n8CaPt1XvQRvO0iuF7tIezevorrI0lro4Fy6Ww7iI7d0MhMpAjcXuQ
         fT5Mevjq+xm6au0jJoh6g6AjdRbKhSYDTLklIBKIYFqPkXkbOhNWHsfNrTiGHVSz0jgs
         zByEgfNIApZ3jmtKArLPbAnz9Jv/dESgjDeQTMdu6cx2rSb01S+JKASXJVbstjPj+KSP
         eoy/5IcHs1CZBRPE2wPK8MFagI8Vl4H4FadmzRLMpJsdtsl85VRikBj1Ve9IEUVkUO0O
         Xh3Q==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 28-20020a05620a049c00b0076d7dc7fa90si9499564qkr.45.2023.10.26.08.21.18
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Oct 2023 08:21:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mx-ext.redhat.com [66.187.233.73])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-410-BGAiPcg3MgqQwCAzliEnKA-1; Thu,
 26 Oct 2023 11:21:17 -0400
X-MC-Unique: BGAiPcg3MgqQwCAzliEnKA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.rdu2.redhat.com [10.11.54.7])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 3FF8A1C068D3
	for <blinux-list@gapps.redhat.com>; Thu, 26 Oct 2023 15:21:17 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id 3CA851C060B9; Thu, 26 Oct 2023 15:21:17 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast08.extmail.prod.ext.rdu2.redhat.com [10.11.55.24])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 34B421C060B0
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 15:21:17 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id 127CF38116E1
	for <blinux-list@redhat.com>; Thu, 26 Oct 2023 15:21:17 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-226-y3BJRpDkOKO4W5CDHZWurg-1; Thu,
 26 Oct 2023 11:21:14 -0400
X-MC-Unique: y3BJRpDkOKO4W5CDHZWurg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id 4D1AA40508;
	Thu, 26 Oct 2023 11:21:14 -0400 (EDT)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id F101E100B87; Thu, 26 Oct 2023 11:21:13 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id EF5A41001A6;
	Thu, 26 Oct 2023 11:21:13 -0400 (EDT)
Date: Thu, 26 Oct 2023 11:21:13 -0400 (EDT)
From: Karen Lewellen <klewellen@shellworld.net>
To: Jude DaShiell <jdashiel@panix.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>, 
    blind_linux_users <discuss@blvuug.org>
Subject: Re: seeking a sftp site to test a problem?
In-Reply-To: <6d2a7935-267c-c2eb-3d57-f1f5d4b194@panix.com>
Message-ID: <Pine.LNX.4.64.2310261120190.3064604@users.shellworld.net>
References: <Pine.LNX.4.64.2310260936510.3063300@users.shellworld.net>
 <6d2a7935-267c-c2eb-3d57-f1f5d4b194@panix.com>
MIME-Version: 1.0
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.7
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

Jude,
Before I do that, I need a location first.
I am using very specifics ftp tools in the sshdos package.



On Thu, 26 Oct 2023, Jude DaShiell wrote:

> Have you tried using quit to leave sftp yet?  Also have you tried tilde
> followed by a period key yet?
>
>
> -- Jude <jdashiel at panix dot com> "There are four boxes to be used in
> defense of liberty: soap, ballot, jury, and ammo. Please use in that
> order." Ed Howdershelt 1940.
>
> On Thu, 26 Oct 2023, Karen Lewellen wrote:
>
>> Hi folks,
>> its karen Lewellen.
>> I am having a computer built, with  a problem coming up.  in fact I have the
>> same issue on this older machine too, which is why I need your help.
>> When I access my workspace with shellworld, either my personal site one or the
>> main one typing exit causes the computer to reboot.
>> The person building the computer has the same issue, typing exit causes a
>> reboot.
>> shellworld is my only access point of this kind.
>> What we need is a sftp location, user name and password, where we can test if
>> the issue is general i. e. network card, site specific, or tied to the sftp
>> client.
>> Can anyone share a door?
>> Will likely not need access for  more than 48 hours.Thanks,
>> Karen
>>
>>
>>
>

