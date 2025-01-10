Return-Path: <blinux-list+bncBDAPZGHUUMBRBPG3Q26AMGQEUWNMLKI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BACBA09EB2
	for <lists+blinux-list@lfdr.de>; Sat, 11 Jan 2025 00:31:10 +0100 (CET)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d8f6903d2esf42157056d6.2
        for <lists+blinux-list@lfdr.de>; Fri, 10 Jan 2025 15:31:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1736551869; cv=pass;
        d=google.com; s=arc-20240605;
        b=jgOUADXsqaXbjFqfU/i0h/Kih3eEkyxS5eheBOQZUfXoccymkX82xjCZW8FKyB8r66
         8/Qbqq5txFtUMuafZtkLIDKZSBU7Xb+jbUb96RRuuEXxrMh6qnsyy3UFzo0Wl0t2v/Tu
         m3x5qlB4BBQ+uIV1GHSYZbI6OKpYxGFpxUege+v1FEuR010QdznXvuKCMuZnw314pcPR
         zWF+4MDUybmwwvSGENiM4T+kWItEHHSmDHXIufkQo9lB9HQ6i9gIe0QwQkDvpo9GmAFb
         Ku+8AsBk9kdbEWePrplx4EE/QhK1I+OmnwMCPk/jKpDyywrgdnktxWsP9PSRhNqKRkQZ
         sTTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:content-disposition:user-agent:in-reply-to
         :mime-version:references:message-id:subject:cc:to:from:date
         :delivered-to;
        bh=CdprT2eDxK4vdaH6qdxFHwm6RLM7CNoSLV69kSD7He0=;
        fh=NwnGDNdMjLZAuUvHtoAJ9LuV/zhcwTNvXvlp2IbeAog=;
        b=Jq/IEswPeFF8JOxVMdmJG7gqp8z4hLMLeKyVp4VXDrKdkxtYRbgAQ5bI3P2eUhq7I2
         aMen6uBEKS7UbSRwjW3cyjRqHl8hkLcb4uTs0afzQmVdgQjFAYEjpOSeY5mB+Z5YlNEV
         202RY8i9hFEwoGzgbRM8+Y6VnKlrJTE1+pQ3oQjbrYmN1VA8q2ojdOn8jen2j0vY4dIq
         sklxUj7ziBngDYQUP+1dVuv2TcnUIlxd5s8CnDV1MBPHyjfhw3u4dtf1d1Vk8Zk1u3vJ
         qofAC+9Fx5N56mEiuvFRGKybIegaiTXXXyHnMGPyYT3LRdMOoS7B/bHD3mlA4xAcsI7d
         cc7A==;
        darn=lfdr.de
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.46 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736551869; x=1737156669;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence
         :x-original-authentication-results:x-original-sender
         :content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CdprT2eDxK4vdaH6qdxFHwm6RLM7CNoSLV69kSD7He0=;
        b=clXnhTZ22VcZQg0OUwq/rKDqbxIVmS6U46Suk65LeCVTHt9eaKkoxzHK8yIhyOScZ1
         h+4ZN/pncjypzXmU9OeaWIGapN1vQOy3vOGE8L9jif34xc9Un9UPe7zXRwolpTyHxN42
         DRVA0b58vSKNhOkYSxsc1akzdKeKhyF95vjFeAVWyjudnUaoveAYmwT5RTO5cJHO1gdq
         PR6gqXKNjg79jtM4HzX+ZEzdr48tDTA/X1srTXHbEN/ftL04MDRaBf3pUbpBPNSlnzx4
         9Ek5GzkGI7IOn0mY7TU8YZsyjZ5ufqfT0hSQzNI2GUb2WF1h4KdSTSGveMdQhG/x7h4h
         phLQ==
X-Forwarded-Encrypted: i=2; AJvYcCVkDy3FkraU83jyMFSt77tXjyY7O/FjmFbJo7+BWUlAeMwdOCahlm8CQ/fGxEMftmp+YSFWnw==@lfdr.de
X-Gm-Message-State: AOJu0YysFkEBSqD+cxwYQ5TVvc/rzZ8VM1MQk0BE51I6btiYk4Lba046
	3gcCd3u+si7jPgqnFbqGA3l/JzNocmXEujlfc6UDqsQ8dChfPE/6vx8u4IkJiQc=
X-Google-Smtp-Source: AGHT+IEDUaXZQx9hGOrwvKSZPALDbYG1fGM/Agq4g+pqLB7sMgYhSiYNvIDfjWOBmEkHSk3lfIVkXA==
X-Received: by 2002:a05:6214:2c0d:b0:6d8:9cbf:d191 with SMTP id 6a1803df08f44-6df9b238410mr189799536d6.12.1736551868590;
        Fri, 10 Jan 2025 15:31:08 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ad4:4ee1:0:b0:6d8:89a6:8447 with SMTP id 6a1803df08f44-6dfa36fa038ls16806736d6.0.-pod-prod-02-us;
 Fri, 10 Jan 2025 15:31:07 -0800 (PST)
X-Forwarded-Encrypted: i=2; AJvYcCWzBN7ZAw7x7UZbNjzfvPgCUEt9s1ubh744S/n00ALBDRQf7NCizyMQEgT3SKiWYl7UVUe1OrFArxNqgQ==@gapps.redhat.com
X-Received: by 2002:a05:6214:2a4a:b0:6df:9771:97a6 with SMTP id 6a1803df08f44-6df9b239406mr163342546d6.15.1736551867492;
        Fri, 10 Jan 2025 15:31:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1736551867; cv=none;
        d=google.com; s=arc-20240605;
        b=L/bC+S72zm63vvOAqC58wNCLhnCYJbxVDmhYegOs4APhxuJxCErRFyxCc9zKuyLajh
         YNuzV0oI12C+4FDvmmWE6Va6fPYRfRFF0janqWqmqj5l4BKXR7mp4uee2xapXwcangS2
         XwOkCjGGNNSepxBEHEOQKWFd9F/z2pSNw2Bf7rhsqUjVLgev3NN1sLQSfn3oScoGyQwK
         OTGfIa8HK6LEItpY8DD1DIykRpU7OWa/kVld/1ch0LnPWZIDAosHh2zyXngWJrlL5bIM
         7gMY2ayB8uvT4hjiO+4wOe+//cTlgt4bGmZlsSXumoG1h773/dgX2XJPRbwe20nsL/HB
         Q2DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-disposition:user-agent:in-reply-to:mime-version:references
         :message-id:subject:cc:to:from:date:delivered-to;
        bh=0dBYqzsbh+CeKuLKwXsbYJY+kxPjGBLNjASaootWy78=;
        fh=VyKXAThI+6qSjiPugOOIse8Xpla/smkW2tVZYif5aK4=;
        b=RMqwa6c6HqbqG6nNuSpHUDmwgoC+bECT/KmjB8/+SrapayQFGwNZXV6WVGxrDFYWrW
         BVKCckOrbjZKElbicLkf//NREytq7ygGX/KnHlr5SEXGbB0WPiEtadkE0bIfCAOOjUsL
         i9n926UPTr6yguG68jGD70NLEoJUqhE0VauG6UzXbmmAq/n1/mSV6Jrkc5yIOJ2G8LqC
         fZ8qhYVbh7c5bDR01iEU6ce/GBAs+/Ykz7ex8GebihUcSaS8j7OGQZ4kueW3VB3bpGMl
         Hv3CyW5ip4a+pCT861atF7VZCReHL+H7PkcdPZ7nRZ3RrB9wzQ49wYAI6r5XKIg5jiTP
         vVjw==;
        dara=google.com
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.46 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [205.139.110.120])
        by mx.google.com with ESMTPS id 6a1803df08f44-6dfade98267si32721336d6.205.2025.01.10.15.31.07
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 15:31:07 -0800 (PST)
Received-SPF: pass (google.com: domain of aarnaarn2@gmail.com designates 209.85.167.46 as permitted sender) client-ip=209.85.167.46;
Received: from mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com
 (ec2-54-186-198-63.us-west-2.compute.amazonaws.com [54.186.198.63]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-638-zegWHa1IOyWDQu9wI2P1lA-1; Fri,
 10 Jan 2025 18:31:05 -0500
X-MC-Unique: zegWHa1IOyWDQu9wI2P1lA-1
X-Mimecast-MFC-AGG-ID: zegWHa1IOyWDQu9wI2P1lA
Received: from mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.15])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-03.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id DDAF319560B0
	for <blinux-list@gapps.redhat.com>; Fri, 10 Jan 2025 23:31:04 +0000 (UTC)
Received: by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix)
	id D7B50195E3DE; Fri, 10 Jan 2025 23:31:04 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com [10.30.177.23])
	by mx-prod-int-02.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id D539A195E3D9
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 23:31:04 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [170.10.128.131])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx-prod-mc-04.mail-002.prod.us-west-2.aws.redhat.com (Postfix) with ESMTPS id 73FBA19560A3
	for <blinux-list@redhat.com>; Fri, 10 Jan 2025 23:31:04 +0000 (UTC)
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com
 [209.85.167.46]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-531-FjrnCAtCPdeDZcXfr5BjBw-1; Fri, 10 Jan 2025 18:31:01 -0500
X-MC-Unique: FjrnCAtCPdeDZcXfr5BjBw-1
X-Mimecast-MFC-AGG-ID: FjrnCAtCPdeDZcXfr5BjBw
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-53e384e3481so2380426e87.2
        for <blinux-list@redhat.com>; Fri, 10 Jan 2025 15:31:01 -0800 (PST)
X-Gm-Gg: ASbGncugI0g9nfpx0BZ4SS0MYCcveC8kqIVP/XKSz+EiugxRCsB2alpMFbk9TlQZBP1
	bcZVddYsrjI5lAyM/pF/TQlyFVAEt/tnlbFFIoEyh+Uow0KdlWywfyboJ1tsy4979BFZ79BEJNA
	YIzksQzyJGXshE5yJ03unQFV68SF5L1i3Z49waL9gvYlT4NKnVZOVsmb2ohy61AAhD61hMHjktq
	vKKibZBY5CEZKdO409cDuA/vTrPc8+B10gX9j31mMdYakpZHvwc70fb2BKSxjuoeoaCC4SkcEcM
	VOL1NwG5MjOeKTzNzoE=
X-Received: by 2002:a05:6512:3ba3:b0:540:1ec0:4d86 with SMTP id 2adb3069b0e04-542845ba757mr4275999e87.17.1736551859871;
        Fri, 10 Jan 2025 15:30:59 -0800 (PST)
Received: from localhost (broadband-77-37-216-184.ip.moscow.rt.ru. [77.37.216.184])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff0ceb5dsm6449001fa.39.2025.01.10.15.30.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 15:30:59 -0800 (PST)
Date: Sat, 11 Jan 2025 02:30:58 +0300
From: Alexander Epaneshnikov <aarnaarn2@gmail.com>
To: Didier Spaier <didier@slint.fr>
Cc: blinux-list@redhat.com
Subject: Re: List problems and a suggestion
Message-ID: <pnwvo2atucpq74zsgwapxptovntfyubgojao3gd5z4ang35eev@ldls45ubopyx>
References: <MTAwMDA0MS5jbHVs.1736523986@quikprotect>
 <8e04abaf-e64f-4d80-b2b7-8870d0eb5429@slint.fr>
MIME-Version: 1.0
In-Reply-To: <8e04abaf-e64f-4d80-b2b7-8870d0eb5429@slint.fr>
User-Agent: NeoMutt/20241212-dirty
X-Mimecast-MFC-PROC-ID: Tv-pV4h_SqiW_5cOPCnLYEhB3qVPFNQ1Vjrd7_asDyk_1736551860
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.0 on 10.30.177.15
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ta4RbZqavl1GMsNSz1f8QuVHZBUHtnZeQsHT93fDfgA_1736551865
X-Mimecast-Originator: gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
X-Original-Sender: aarnaarn2@gmail.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of aarnaarn2@gmail.com designates 209.85.167.46 as permitted sender) smtp.mailfrom=aarnaarn2@gmail.com
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

On Fri, Jan 10, 2025 at 11:00:58PM +0100, Didier Spaier wrote:
> It's me who suggested to create another list to replace this one:
>
> Let me quote my post about that:
>
> On 06/12/2024 22:36, 'Didier Spaier' via blinux-list@redhat.com wrote:
> > Thanks Chime,
> >
> > unfortunately this information is rather old, thus many of the links it provides
> > are dead.
> >
> > Unfortunately the blinux list is only partially usable and provides not recent
> > archives. Fortunately the is one here instead:
> > https://www.spinics.net/lists/blinux/
> >
> > I think it's about time to cease to use the blinux list that seem to be
> > under-managed if not no more managed and replace it by one that could be hosted
> > @ freelists.org as is the orca mailing list, which is free with good records.
> >
> > @All, what do you think?
> >
> > Is there a volunteer to register then maintain a list like blinux@freelists.org
> > replacing blinux-list@redhat.com?
> >
> > If no one volunteer to do that within a week or so I could do it, unless someone
> > objects or have another proposal.
>
> Then Alex volunteered:
>
> On 07/12/2024 16:13, Alexander Epaneshnikov (aarnaarn2) wrote:
> > Hello. I think I could create and administer such list.
>
> But he did not create this list so far to my knowledge.
>
> @Alex: please tell us if you still intend to create this list.

Yes. I celebrated the New Year so much that I completely forgot about it. Sorry. I'll do it tomorrow.

> If you don't, I will create it next week and post a message here and in similar
> lists when done telling how to subscribe to the new list and manage the
> subscription which can be done by emails exchange without needing to use a web
> browser.
>
> After that I won't mind that someone else (possibly Alexander) takes over the
> ownership of / admin this list once created.
>
> Links to provide more information about freelists.org:
> https://www.freelists.org/help/
>
> Cheers,
> Didier
> --
> Didier Spaier
> didieratslintdotfr
>
>
> On 10/01/2025 16:46, 'Cleverson Casarin Uliana' via blinux-list@redhat.com wrote:
> > Hi, I'm about to retire this e-mail address which is subscribed to this group.
> > I'm unable to do any operation such as unsubscribe this e-mail, subscribe
> > another one, or even turn vacation mode on.
> >
> > I recall someone suggested to create another group to replace this one. That
> > would be good for me too, though I believe another option is you all subscribe
> > to a group like Stormux at groups.io, and use that for general discussions.
> >
> > I prefer not to risk creating an alternative group, because I've never
> > administered a group, so I'd probably be too amateur at that.
> >
> > Regards,
> > Cleverson
>
>

--
Sincerely, Alexander

To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

