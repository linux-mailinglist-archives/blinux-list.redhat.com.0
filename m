Return-Path: <blinux-list+bncBCVPTHE7K4INBENVVIDBUBHOQKHXC@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ECD37E7326
	for <lists+blinux-list@lfdr.de>; Thu,  9 Nov 2023 22:02:10 +0100 (CET)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-66d08175882sf14850756d6.1
        for <lists+blinux-list@lfdr.de>; Thu, 09 Nov 2023 13:02:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699563729; x=1700168529;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:cc:to:from:date
         :delivered-to:x-beenthere:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MXDHhtqfx+lj1Mra5weO/cirLSdbHmJgY/IlwCfE6rA=;
        b=li5ni6vebHAboX7bE302z4ZhevdMSv65O75fXAHa4K+SBlk8++7Ic5TxPSkBjsudbj
         6LLG8JpLaFW6WwfMvjmFS3c6adiPXs8NRFZhoaJsuNWSHD6dBxAZOvJ6zRLbH/UDOmTX
         6s+/OgqXIeAShhhzU8g41vBctEbFTKMrOWxyYKAr8SOrCFUjqwXrMKVShbyqaS/i4wJw
         OpGK8le9SK4pKsoZjfZs29wyL7NCVK1z7bYWxLn1eAW6wrjHp/NlW5zRDEJEnZaRsWwQ
         //nCj1KApToAPV8WF+Pof5BBXjGyTYyeN4XBFGZ+Pm6qgEr8mAzAjHcTqOW0wgnwhWTu
         Fb+A==
X-Gm-Message-State: AOJu0YzPwH8dsEvnmUR8OZM9kyP2ScwVdM0z7phy/u/U75UrdVsjhgC0
	s0c62rh9T+lkEMWxyFELG13bSQ==
X-Google-Smtp-Source: AGHT+IFffsIOJsHwIDCQoW++MJU7ZTrCObelLhmSx1uaMSh48AjbskoFM87BnAATfl9RuCdKcKXBkA==
X-Received: by 2002:a05:6214:c43:b0:65b:259f:d6a9 with SMTP id r3-20020a0562140c4300b0065b259fd6a9mr6360360qvj.7.1699563728559;
        Thu, 09 Nov 2023 13:02:08 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a0c:d68d:0:b0:66d:9d16:5a4c with SMTP id k13-20020a0cd68d000000b0066d9d165a4cls612196qvi.1.-pod-prod-03-us;
 Thu, 09 Nov 2023 13:02:07 -0800 (PST)
X-Received: by 2002:a67:cb98:0:b0:457:e3ed:206c with SMTP id h24-20020a67cb98000000b00457e3ed206cmr5044745vsl.11.1699563727696;
        Thu, 09 Nov 2023 13:02:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1699563727; cv=none;
        d=google.com; s=arc-20160816;
        b=QGv68lZfug3yIH2TUU2VH2jkwHGslo+BGw+vmABjFcYPPosBrbG844cmSk0grZZoiJ
         BpbNg7/YFvlczsjNTrv7ePgAhhqy5jhRMn1GJzMBHVhJSw25wnIFezgfmtkVqdqCwQoh
         tuxICMH2+aXCHQ4zG4zBtAT7bl+dhVpAkG1fRaNIYH8cbckzOjwd6hTd577oMIzMJolZ
         oL8RR/TNctIH3vPwHi3QU4CbljsUM+OjiSKVPWRmAAc0NB5fXkeI9/vhU+h/cUovInuu
         C7rd5OMp9oZWAvcUXAFGSFb6mhb5oH8NC3dEIwTxdkJyZrpUSk8TRjL2UtgLL8fVrq7k
         NtrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date:delivered-to;
        bh=MXDHhtqfx+lj1Mra5weO/cirLSdbHmJgY/IlwCfE6rA=;
        fh=fQue1LVswyroBUi493FuNRGs2h1etDPzgwP/d0K1aSw=;
        b=Vm7W41C+i/5G0UJgKHo0MXeJ0Ad10vqGx3IBBJ3uun4GE2vuow50BD3TX1UFdMONGK
         ETO/hiO17bRmR+4zwfAhhVMSiKw67Lt3Udgyv8rp5TXaMO4xA0VhJgaT+8XL19G+7jJR
         l0GGPig9FZ53t8zboGs8QkCPVt4LS31pVkF6oQRXTAdbZ/ISmNrusfgGyeDl0tOUYfAD
         d6hiWE1afynbUNc0BEBNrpdG/X0c+b9cpe7xXxFU7ykAPM5eHCdZmxo18X3ZtzQQlEE1
         POe3SchSOzLsFY1w98pf9Kv04zUYL0iPRTMQsjaCRCUBLRXiWWC7hC5wJHaoLgiG1/ya
         IkKQ==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) smtp.mailfrom=klewellen@shellworld.net
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by mx.google.com with ESMTPS id h4-20020a056102208400b0045d9574b937si765648vsr.525.2023.11.09.13.02.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 13:02:07 -0800 (PST)
Received-SPF: pass (google.com: domain of klewellen@shellworld.net designates 23.24.6.165 as permitted sender) client-ip=23.24.6.165;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-102-tZy61_ghNNCjHw5xSd_kkg-1; Thu, 09 Nov 2023 16:02:06 -0500
X-MC-Unique: tZy61_ghNNCjHw5xSd_kkg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.rdu2.redhat.com [10.11.54.6])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id D570F85A58B
	for <blinux-list@gapps.redhat.com>; Thu,  9 Nov 2023 21:02:05 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id D124C2166B29; Thu,  9 Nov 2023 21:02:05 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast01.extmail.prod.ext.rdu2.redhat.com [10.11.55.17])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C93062166B28
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 21:02:05 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-2.mimecast.com [205.139.110.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A9F0C85A58C
	for <blinux-list@redhat.com>; Thu,  9 Nov 2023 21:02:05 +0000 (UTC)
Received: from atlas.bondproducts.com
 (23-24-6-165-static.hfc.comcastbusiness.net [23.24.6.165]) by
 relay.mimecast.com with ESMTP id us-mta-306-5I_KH5q9NdaAlRR2qmhjeg-1; Thu,
 09 Nov 2023 16:02:03 -0500
X-MC-Unique: 5I_KH5q9NdaAlRR2qmhjeg-1
Received: from users.shellworld.net (users.shellworld.net [50.116.47.71])
	by atlas.bondproducts.com (Postfix) with ESMTP id B1EAE44FC6;
	Thu,  9 Nov 2023 16:02:02 -0500 (EST)
Received: by users.shellworld.net (Postfix, from userid 1005)
	id 7BFAD100B35; Thu,  9 Nov 2023 16:02:02 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by users.shellworld.net (Postfix) with ESMTP id 79B5F1001A6;
	Thu,  9 Nov 2023 16:02:02 -0500 (EST)
Date: Thu, 9 Nov 2023 16:02:02 -0500 (EST)
From: Karen Lewellen <klewellen@shellworld.net>
To: Chime Hart <chime@hubert-humphrey.com>
cc: Linux for blind general discussion <blinux-list@redhat.com>
Subject: Re: insuring alpine's setup menu speaks?
In-Reply-To: <914d2b89-e0fa-7eb1-bcac-fb51fd255c59@hubert-humphrey.com>
Message-ID: <Pine.LNX.4.64.2311091556320.3313038@users.shellworld.net>
References: <Pine.LNX.4.64.2311091532130.3312735@users.shellworld.net>
 <914d2b89-e0fa-7eb1-bcac-fb51fd255c59@hubert-humphrey.com>
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

Hi Chime,
I believe the cursor tracking may be the one...I do not encounter what you 
reference with  key menu.
let me search for cursor tracking.
Thanks!
Kare



On Thu, 9 Nov 2023, Chime Hart wrote:

> OK Karen, 2 settings I can think of which make Alpine or Pine less 
> frustrating. Disable kee menu, otherwise you will hear these groups of single 
> letter items which are probably designed for beginners. 2nd would have to do 
> with cursor tracking, but right this second I cannot think of its exact name, 
> what you can do is open alpine, m for menu, s for setup, c for config. Then 
> hit a w for search, type in cursor. Its probably a checkbox, so mash enter. 
> Lastly hit an e to commit changes. Hope all of those steps will help.
> Chime
>
> -- 
> You received this message because you are subscribed to the Google Groups 
> "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an 
> email to blinux-list+unsubscribe@redhat.com.
>
>

