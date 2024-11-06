Return-Path: <blinux-list+bncBDYPVTOXSQEBBPMNV64QMGQETPUSQOY@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id B89299BF74C
	for <lists+blinux-list@lfdr.de>; Wed,  6 Nov 2024 20:42:55 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6cbeca2b235sf2018326d6.3
        for <lists+blinux-list@lfdr.de>; Wed, 06 Nov 2024 11:42:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1730922174; cv=pass;
        d=google.com; s=arc-20240605;
        b=WlraZQ80rEQhIwUnmI56IFnZXOb1vErnhB/3Y29yDkQILwU5wJt44FoBWYaZ22ssjk
         pTwYIKG0rFYLUNr41yRB7u+B5UOe6zjReaQm84UImeinf9pq07KlK92ukQP6+yviCBFA
         vG03YTv74EjgzdW9PrrRs2x6rMN/JbcVqlUFSsU+C3wnVz+3x7wB2tlrDttWKq7WgshL
         d4MsGov7wH14XbZPjurtqnMUQg/LfnCLjtzuw9ZpNHIbRkTGkI38+tuWjfRAJqWeXzTK
         P6GN3jg9rEkYMNMiqY6L27SYDPAn0JWxpgfpEi/JlKBnKWtMMeQV/57dr37A1HPtVHqC
         Bpsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:to:from:date:delivered-to;
        bh=MpTfVcmepCPKgdzNbFXExM4kr+v7DvINSJgdK5BxKqw=;
        fh=BevXZEkLiy/KJ8DQg1TdAGCzd7iWGJ1tUiTitAwI4Vk=;
        b=azJHV1yQwX1FZg+r5WE98Ee6VmILGVHm3z7xkT08XUVg+hfnAOkXCsoPEnBGJsMsJ7
         Zh9D8xubQi17oAXNdpm+pg+O4XDzdyJlnAK5d0Yn7DhakPtUO2m6LPc3dKBWCKshEyM7
         Xnrlc6rNfRBgMA/25sJQSxJQLPWGLd26PzImVBm/p18uobPs77yQN+yWj3HXQA76rxh9
         ajfSUTMVltQGkr++fW52lkJFnBy/8nLXN/2DNq2iUfB/Y2JnjoBDTPw0vUvOTJQB/HV2
         2yHZVZkiuVU0ANDgidIQBL4Rs5cyE5EYmBQ+q5Z8OXPBKEvGEeFRGyhnHasjtGNcBOWD
         JgEA==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730922174; x=1731526974;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender:mime-version
         :references:message-id:in-reply-to:subject:to:from:date:delivered-to
         :x-beenthere:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MpTfVcmepCPKgdzNbFXExM4kr+v7DvINSJgdK5BxKqw=;
        b=hH8cO0EGb3Rgnb+TmvlR1i9t9DjoExGUW0DcVnttKHzt0dwX+YdYKlsr4UO5r8HrY2
         BALP/0OP5j2WQf/4G3uGqHg+gWgUPlsOtjD3uof0Giz+nZ/xVbgOSE0CKbFdPqTsWKKe
         ORiwveyTw8Po3nPJeFWlRyHgzHujicgCFWe6Pw7GZXadYNVXpgXkiIV0aVSh6yGYPUfd
         6Y0ZM/5kFB8I8yAn/mpFH3y+Rq5lPPWVs09s12J6+EZSRWawOGjzZs/1T+ej6MuIDKBu
         yf5i8+56M3/NLoTRYYQjQGireBAlECkLAFwQ8j227QTCWQNa39zLTerCAc46maFOCzlz
         gkdA==
X-Forwarded-Encrypted: i=2; AJvYcCVShU6OWcosYPZkR7Y0jdR+xFMIGGdM1HNudagCsuaqZsiPi/b9k1gFk66WwCE4ADUtCvmCIQ==@lfdr.de
X-Gm-Message-State: AOJu0YxQ5zRIE11SHVzIwBvyGstsWPJiCywBWqTkco8PNODUvnO2lKAB
	JsQ90OUsJU03/nck+NhVN/NiwTRGIiToZ9g9ptF3Z8GAok3sjrT86a9JVKA1yog=
X-Google-Smtp-Source: AGHT+IHxMJSJU3XJT4Hb3gmI1vioSYn4yuW/SGYgA/FYEIrXqRGlvHVq5ao4PdX0xROfkpqFh+HSZw==
X-Received: by 2002:a05:6214:2d44:b0:6ce:1011:60c1 with SMTP id 6a1803df08f44-6d35c19b8bbmr239988096d6.35.1730922174444;
        Wed, 06 Nov 2024 11:42:54 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:a05:6214:c44:b0:6cb:fae8:5fd8 with SMTP id
 6a1803df08f44-6d3933d0e13ls2853626d6.0.-pod-prod-04-us; Wed, 06 Nov 2024
 11:42:53 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWE0mrWhcLMUPSJcAl2zwX+Ts49qh/ybi27+DNAUY1lSWXBSv+M+9XZJ7zOOgYfZff9i2wF5mzNwmLC6Q==@gapps.redhat.com
X-Received: by 2002:a05:620a:198e:b0:7b1:4536:8db7 with SMTP id af79cd13be357-7b2fb9cc180mr2805046185a.45.1730922173382;
        Wed, 06 Nov 2024 11:42:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1730922173; cv=none;
        d=google.com; s=arc-20240605;
        b=MwwKzg0MEk/1MRogsFjSsOjgggt7YYOPw3whYbkvlNTrsAradxLK+ruLymN5FvQEXM
         qLVlKCpBzOANZsQOjqfoWzzigvQLDZbG3JtfxAtVRU6EcBNjDekT8QkUsRArxSZbVV5I
         GUVsiU4DvSh0CxcZ4FRNgKsZOIaCUgjzfxNp7SDL28c7/uR0dArfYn/T+AwZry8h5VFY
         3Sv79xhYCetB5Mg7NzKJP23PK/tnb3HsB26wNVImCN94zMhWJNLl4CPtJGBSFfkikuNc
         FbDPo6I1rdNfGvF2xwHgzdtcLnZin6EvXNYuT/C4Cea4tLZqSwx67qUsFZFVSh9+coTh
         nIlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=mime-version:references:message-id:in-reply-to:subject:to:from:date
         :delivered-to;
        bh=EFhLeM97gko8OHn0B5CyNLAhrLvWYBod43tBE0gIUL0=;
        fh=Ppud5brXcO7Ii9GUjWP5Bn7eOaZbOlsG2+9D/2yFPDM=;
        b=krjf2HuXC3MQiMreRJl114yfvp+EE5VwUVJ0lBoLJF0NrMwgSiuXE3ZqUZXRluIN8o
         jeNyuLzdam+2zwYk0BF1kIGzK4D60l7pA9QVuqtCDq8+rKINklqSdWrl3I5IcFyj7hvo
         R3oVg7Ps8UiWYJiZvloHSrACdZbpSsZwOA6DvHj935V/BRw3aVl+vsoR0IRhOPbM4pUh
         rai+AzCFiDM9S8SG1fgXFtx02Zv+LTlZvaNqzNmM44XZeSOeKIvLmrU9tW7ywTYYUYRP
         bG3GgSCJVHqa84d66eOU9/JHsArSOYSi0ieUE12/aGBebgmQlk6pIDTSv+H2sOYa/OF6
         MEow==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [170.10.128.131])
        by mx.google.com with ESMTPS id af79cd13be357-7b2f39f1a2asi1630674185a.138.2024.11.06.11.42.53
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 11:42:53 -0800 (PST)
Received-SPF: pass (google.com: domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) client-ip=166.84.1.89;
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-395-2lXdpxa0O4eokJ-QNKsaVw-1; Wed,
 06 Nov 2024 14:42:52 -0500
X-MC-Unique: 2lXdpxa0O4eokJ-QNKsaVw-1
X-Mimecast-MFC-AGG-ID: 2lXdpxa0O4eokJ-QNKsaVw
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 716F919560A5
	for <blinux-list@gapps.redhat.com>; Wed,  6 Nov 2024 19:42:51 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id 6B4891955F42; Wed,  6 Nov 2024 19:42:51 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.58])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 68CD41956088
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 19:42:51 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com [170.10.132.61])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DD24A1956048
	for <blinux-list@redhat.com>; Wed,  6 Nov 2024 19:42:50 +0000 (UTC)
Received: from mailbackend.panix.com (mailbackend.panix.com [166.84.1.89])
 by relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-16-t3MhiVK5MEucISHLM_1otQ-1; Wed,
 06 Nov 2024 14:42:48 -0500
X-MC-Unique: t3MhiVK5MEucISHLM_1otQ-1
X-Mimecast-MFC-AGG-ID: t3MhiVK5MEucISHLM_1otQ
Received: from panix1.panix.com (panix1.panix.com [166.84.1.1])
	by mailbackend.panix.com (Postfix) with ESMTP id 4XkFwm14Qnz4V0w;
	Wed,  6 Nov 2024 14:42:48 -0500 (EST)
Received: by panix1.panix.com (Postfix, from userid 20712)
	id 4XkFwl71s7zcbc; Wed,  6 Nov 2024 14:42:47 -0500 (EST)
Received: from localhost (localhost [127.0.0.1])
	by panix1.panix.com (Postfix) with ESMTP id 4XkFwl6yLnzcbV;
	Wed,  6 Nov 2024 14:42:47 -0500 (EST)
Date: Wed, 6 Nov 2024 14:42:47 -0500
From: Jude DaShiell <jdashiel@panix.com>
To: mattias jonsson <mjonsson1986@gmail.com>, blinux-list@redhat.com
Subject: Re: chromebook and tdsr
In-Reply-To: <193021c8db0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
Message-ID: <48b60262-4cc5-39c5-7269-a6585c352296@panix.com>
References: <fd0ee2da-860d-5025-92c8-9f347530982b@panix.com> <193021c8db0.275e.afbff0009b353412c733e12e23e6ae2b@gmail.com>
MIME-Version: 1.0
X-Mimecast-MFC-PROC-ID: JFQoW8-yy71g0dqWtjA23xpe17WaoTDV8EQUTzM510A_1730922168
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: 0a-aKdwg4dOK3M7K_BoYaY4dU1CPV_A_AkT1p8zMZNw_1730922171
X-Mimecast-Originator: panix.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jdashiel@panix.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of jdashiel@panix.com designates 166.84.1.89 as permitted sender) smtp.mailfrom=jdashiel@panix.com
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

meta key?  chromebooks have no meta key.  They have a command key just
above the shift key and I don't use it or need to use it when running
tdsr.

-- 
 Jude <jdashiel at panix dot com>
 "There are four boxes to be used in defense of liberty:
 soap, ballot, jury, and ammo.
 Please use in that order."
 Ed Howdershelt 1940.

On Wed, 6 Nov 2024, mattias jonsson wrote:

> jude
> how do you use the meta key for tdsr
> you cant set the alt key as meta key?
>
>
> Den 27 oktober 2024 18:50:32 skrev Jude DaShiell <jdashiel@panix.com>:
>
> > I'm using the package in the debian container environment with 96gb of
> > space so it has enough room to swing a cat. tdsr for whatever reason needs
> > to be started once the penguin shell is opened with chromevox turned off.
> > For whatever reason so far the command to start tdsr cannot be appended to
> > .bashrc without generating trace back errors.  My guess is the command
> > just before the command to invoke tdsr needs a couple ampersands attached
> > to its end so tdsr will only start after that command has run to its end.
> > I've tried it other ways and had to power wash the chromebook to clear my
> > mistakes.  If I can get the sound card to play a tone at the end of
> > .bashrc execution that would be helpful too.  The shell comes up slowly
> > even with chromevox disabled. I'm using an acer spin #713 I bought a few
> > years ago since my main linux tower died and went to the recycler until I
> > can go and buy a replacement for it.
> >
> > --
> >  Jude <jdashiel at panix dot com>
> >  "There are four boxes to be used in defense of liberty:
> >  soap, ballot, jury, and ammo.
> >  Please use in that order."
> >  Ed Howdershelt 1940.
> >
> > To unsubscribe from this group and stop receiving emails from it, send an
> > email to blinux-list+unsubscribe@redhat.com.
> >
>
> To unsubscribe from this group and stop receiving emails from it, send an
> email to blinux-list+unsubscribe@redhat.com.
>

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

