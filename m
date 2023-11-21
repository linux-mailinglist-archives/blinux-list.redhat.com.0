Return-Path: <blinux-list+bncBD6J3OOK2IIBBCU26SVAMGQEVM7LWRI@redhat.com>
X-Original-To: lists+blinux-list@lfdr.de
Delivered-To: lists+blinux-list@lfdr.de
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mail.lfdr.de (Postfix) with ESMTPS id C85787F3708
	for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 21:03:23 +0100 (CET)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-421af801578sf63031111cf.3
        for <lists+blinux-list@lfdr.de>; Tue, 21 Nov 2023 12:03:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1700597003; cv=pass;
        d=google.com; s=arc-20160816;
        b=sYNw7fLvZNHiVUTLZDpfmkyLjOqiFnvLU77sk0SSou3VAIOjrU/8yoBxVnMRH/++2X
         p5b7CuRl2WkF/VT6I355vSSHK7x5GMSJ+/qoM45WiqFbcf1Ivl9+sbosjf0bq/Z5tJPN
         v4ual4M7sjQ2mj2K64K33G8zEuD+laYQhr3wapnGpaD257LKgYz5diUlg5gWtRphgxwG
         NDuY/5LCRJywwHaE9/KhEVQLoY1OijYGIvYdt0bRoq+z9MUbae80g1vS8xhJf18XfFCQ
         VPnCdb3T72vlEPrQj34nlEcnbdN+goe9eFOt5y5lp8B13cQR735Nyl5nWHtUsolSO1qW
         4XcQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-archive:list-help:list-post:list-id
         :mailing-list:precedence:reply-to:ui-outboundreport:user-agent
         :references:in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=DvDYPJEMoD5WhKwC8rtpRCWUpHiYUzOdrQM6cuT1FTw=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=KPyX+iOh7hT1CqEEi9vwKmsSVHDnn5iSOe0MAkU5jeHl0oVo7kIVlJOnIuZbyTcZON
         hNN7nur5RPtBfyjRHgIapmyjl/yYn6wHfV4dmER61T76mEpUcNOKpmrs+ZiPC9bizApb
         QhRJtEGyfiYhO4uzCanjak62Mt6vcUxl8mYuPJ7AyhaDWp6WoXG8Y4LuWPRz9idahFt/
         vUn2ziwcr0JfGNXFkuUrmPUk2F88gbOV6uy1mmccan+tBJ/Snf16zc8jdOkWZt6WVtYx
         EnI80f+I1VkuTBBbEtXJETeClCRdbGtdt/BaOCCj3aiisJNay0B4vrkcObO8JB/+QJWQ
         Z5Ew==
ARC-Authentication-Results: i=2; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700597003; x=1701201803;
        h=list-unsubscribe:list-archive:list-help:list-post
         :x-spam-checked-in-group:list-id:mailing-list:precedence:reply-to
         :x-original-authentication-results:x-original-sender
         :ui-outboundreport:user-agent:references:in-reply-to:mime-version
         :date:subject:to:from:message-id:delivered-to:x-beenthere
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DvDYPJEMoD5WhKwC8rtpRCWUpHiYUzOdrQM6cuT1FTw=;
        b=rks7ACMlzKr/QFR9WjygHQa3M5wqjA1rJUkJFB1AdG+KghnNeXRZFlq7d0Zg3GEkCD
         Zd7Zui8FvbeYHYZMcHBIP7DPR+Ox2/cXZL9fQP2nKjIwq8clJMXRdWXPqdmh+tRbomlu
         YjVeCO/ioXNAB1ZMv8FUAvxL3l7o0o/CnbQxH1Fy5d9/X2SFnIULNw8zCEXLYgMT0BW4
         yXYog6RFEYIQaUMNO2KBT2G1UPYbvx98tLZM91Un3HBd8pxqdKv+Yon2QfV8ZyQFsxuy
         oKP6GX9UzDjKfsnYJPzeYxg/0CFIDyb/lhE9bDWK2LKOaN71EiQB07VjAN5y1OpS/izg
         I28A==
X-Gm-Message-State: AOJu0Yy1lRcKbd8mdA9tly9VJsYYwq5hS2HFvVTLiXqIQcBt9CRpVra5
	/A+8qi1Rv4lw7zn1og+s9iH7Vg==
X-Google-Smtp-Source: AGHT+IFIIwhZ5qj318LYzmynuQPiQgBNK1xRuz9WRZBQI3C7mEsdwK/iEUatttEazFsUbGIqHHgy0Q==
X-Received: by 2002:a05:622a:138a:b0:423:6e67:3a06 with SMTP id o10-20020a05622a138a00b004236e673a06mr177056qtk.6.1700597002743;
        Tue, 21 Nov 2023 12:03:22 -0800 (PST)
X-BeenThere: blinux-list@redhat.com
Received: by 2002:ac8:7f02:0:b0:40b:404b:aeb3 with SMTP id f2-20020ac87f02000000b0040b404baeb3ls813293qtk.0.-pod-prod-08-us;
 Tue, 21 Nov 2023 12:03:22 -0800 (PST)
X-Received: by 2002:a05:620a:3c09:b0:77d:6181:771c with SMTP id tn9-20020a05620a3c0900b0077d6181771cmr75695qkn.27.1700597001969;
        Tue, 21 Nov 2023 12:03:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1700597001; cv=none;
        d=google.com; s=arc-20160816;
        b=g6x/3vTu9Zetm7rIzE+WyTYHnjgDsx9PVktPS9mTfi5D37TrJvrvssBGL6OkKe4sWu
         QtLa/cD+xpye+bJZRHg9kcVx/B9inSOsfQ/vlcRqABXyd9N+PzWuLvaxboGzL/e+2JBq
         v9USzgryd7IMxbVqFnPPRkpwM8Jir6z73T9LZB5jMaSGAOHDjRMXaLlvYLdPGa5Hiwz/
         b7lJaIwjI9hg0SgQ/diYpxX2xRs6SBVqOR/Ju4WIlXtRwDIuUPXUxZx01WAgBs/q2DSR
         Yf1bVPHYpjx0Pf52ckrymq6kWpgauo/6SdNRr5PS4CuGQnwknAsvGGiB/kJYQT/F/kF5
         ULeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:ui-outboundreport:user-agent:references
         :in-reply-to:mime-version:date:subject:to:from:message-id
         :delivered-to;
        bh=AyHepEU9xTDdF6Yn8A6W+n8XLWuXvq5y8lLUlj6348U=;
        fh=hUMLaj1qiZfoDoiTFhzcKELatGw8GqpvMqlOZTxv2vw=;
        b=0BEOQFy8hP+dOA7Fg9qW7kuPWBXLLMSQh8wp5Bb8S95cQTtwNyXGSgquJ54QMCNosV
         RX7gDUWuRSYOagNrTR9PqnlnU7DNBVYHLlXNYF70BsXyL7ufV6+AvRu33C7ojqg/fT7v
         BX88lGrOfM7XlG/vEuueR+97fGJdTptEOcxEKscpFqqMZ81woe3PCDfViVBA0b/BVv3t
         UuyjBjlw0jxuuuNXDd/Qrr0GFkOdhQjpWQNQc7xHVlBR+c0pQkDzTI6UC2ZYp5AbYKW0
         Egp6/zFlxfIhYSyIKkEx9X+8sKYS+ELho5GXo1SvPCgfleMyyEVnUtHY36l7jn3yOawv
         OnZg==
ARC-Authentication-Results: i=1; mx.google.com;
       spf=pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) smtp.mailfrom=rob_hudson_3182@gmx.com
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-inbound-delivery-1.mimecast.com. [207.211.31.120])
        by mx.google.com with ESMTPS id f11-20020a05620a280b00b00773a83f4976si9792009qkp.712.2023.11.21.12.03.21
        for <blinux-list@gapps.redhat.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Nov 2023 12:03:21 -0800 (PST)
Received-SPF: pass (google.com: domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted sender) client-ip=212.227.15.15;
Received: from mimecast-mx02.redhat.com (mimecast-mx02.redhat.com
 [66.187.233.88]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-575-IE-p9xdsN-qK2gac7MJsMA-1; Tue, 21 Nov 2023 15:03:20 -0500
X-MC-Unique: IE-p9xdsN-qK2gac7MJsMA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.rdu2.redhat.com [10.11.54.5])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id CC92280C347
	for <blinux-list@gapps.redhat.com>; Tue, 21 Nov 2023 20:03:19 +0000 (UTC)
Received: by smtp.corp.redhat.com (Postfix)
	id C8A03502A; Tue, 21 Nov 2023 20:03:19 +0000 (UTC)
Delivered-To: blinux-list@redhat.com
Received: from mimecast-mx02.redhat.com (mimecast03.extmail.prod.ext.rdu2.redhat.com [10.11.55.19])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C0CE45028
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 20:03:19 +0000 (UTC)
Received: from us-smtp-inbound-delivery-1.mimecast.com (us-smtp-delivery-1.mimecast.com [205.139.110.120])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mimecast-mx02.redhat.com (Postfix) with ESMTPS id A1456811E7E
	for <blinux-list@redhat.com>; Tue, 21 Nov 2023 20:03:19 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.3,
 cipher=TLS_AES_256_GCM_SHA384) id us-mta-496-XqqKjQfdOZ6_5IzfMpBShw-1; Tue,
 21 Nov 2023 15:03:17 -0500
X-MC-Unique: XqqKjQfdOZ6_5IzfMpBShw-1
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.1.100] ([208.107.97.40]) by mail.gmx.net (mrgmx005
 [212.227.17.184]) with ESMTPSA (Nemesis) id 1MMofW-1qmteK0H48-00Ii1f for
 <blinux-list@redhat.com>; Tue, 21 Nov 2023 21:03:16 +0100
Message-ID: <20231121.200413.419.2@[192.168.1.100]>
From: "'Rob Hudson' via blinux-list@redhat.com" <blinux-list@redhat.com>
To: blinux-list@redhat.com
Subject: Re: Regex for spaces
Date: Tue, 21 Nov 2023 14:04:13 -0600
MIME-Version: 1.0
In-Reply-To: <20231121194452.ux4ikae66aksv4rn@sprite>
References: <20231121.153445.633.1@[192.168.1.100]>
	<20231121182732.f675f7aqswegm7xr@sprite>
	<20231121194452.ux4ikae66aksv4rn@sprite>
User-Agent: POP Peeper Pro (5.4.6.0)
X-Provags-ID: V03:K1:aJ4U6AX23PV3JNsdvL4EoZ1jNUt/hScx+/GukrXboDCWXFJEDQd
 IVJer/5CG8FxQyk4n80N4HaSNFZsfKRBh6fXCPJ4GgLMFYP6o4oqRoX7+imsGORhB8y1pRd
 7R1AEQX7+NRBRikaLaZOIBAU8BcK71BNQhqVulyNGpqrW/CecLRpj3ABHYaRLazWoQNOjpz
 /p8XFSJKlqJ+ebHO45xPw==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:5Ox7hca6Mso=;ZFBelLzTA2QVkxpcbjv30NTLl+N
 t5PXVRXbHgBF7Bj/+Cb5Ru8DtyJBpIMwhKhsAhBLnHzUhbFKwotIODQAcPc8kXNi56IYxwEOD
 LH481MtoeOiRHSxQTD7qIjqq0+ZZvKoBevnmB7eh2zaCM6cxaiPhsmWDop9+QxRt7/d7SknGe
 VJSxbvNH+jGlHF+asyv/Uu1r9rSPU4zOX0AZB3P0E5j0LkqhyUZzPOzh8KrGr9UPyxUxOE8ZK
 AGG5qAqOLmOENPCpwP5ZAonpwvpmPWdZK96KePgkBArkbF37At4TqGnnW/gOB3/pz6Mu6mKxK
 iGmvr9D3LzmsoJRLisIncfW6qaqKDFY3YxKa6NSwETWweBOop6xY0QwFzPgxQtq64MwIpD2gE
 3nNdpB5cE2Jj6DLp0QN3opJpYp6+e24Ze48277/ho1rsjOWZ7+RZtn5KhCV+8/SAVfQLbkHZJ
 ZWtO3IyGPAXD/pjbFwrOIWij1nijYp3KW0XNxj4QtPL7tphD4YVNNLQNVBxX6WXDPdnG9rIoX
 bvTRt9Nm1vKj2F0cVYWnhcADF0MdSkuLBb2ySycHZYhAWlv35saqpWzTUkgQMfOuVZwQjEhrE
 eucn76Srsa4JWcFkxhLCPsA5lePd84yGhOoM3p4sKopSO9gxacTaIeJZjTGw/JfiswF9mjgzZ
 cMIf3xgzI/bN1ZvESpc3+VwiV2/Dky7v0fT2tU/ykbPrUdPdahh9gdCLVHKkbpBNYpj1hCdut
 Z1LIIOYQ93owclvlI6QEt2HUG6w7k0qnAw2aMDhvFOdpAA3Oe1v9FXTNTqZF7ON4WhM81B475
 tyX0yXFSlmoGOwkHxZ9/m1mhYLv/dO1/IWHHIvYuvxGrRNl3M3wB9WdmoMPQ3bu7cnAWLaPkP
 yq6cPbMoGF7r2jPF7f2pE8bcEA3V5ksmo1KZPvYOjFRE3ezaPfj8pWinL5KLC0T9ZoIdXdLQ0
 hDTse3M4GWSgHQGGBT9ArbQ9PDw=
X-Mimecast-Impersonation-Protect: Policy=CLT - Impersonation Protection Definition;Similar Internal Domain=false;Similar Monitored External Domain=false;Custom External Domain=false;Mimecast External Domain=false;Newly Observed Domain=false;Internal User Name=false;Custom Display Name List=false;Reply-to Address Mismatch=false;Targeted Threat Dictionary=false;Mimecast Threat Dictionary=false;Custom Threat Dictionary=false
X-Scanned-By: MIMEDefang 3.4.1 on 10.11.54.5
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: gmx.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rob_hudson_3182@gmx.com
X-Original-Authentication-Results: mx.google.com;       spf=pass (google.com:
 domain of rob_hudson_3182@gmx.com designates 212.227.15.15 as permitted
 sender) smtp.mailfrom=rob_hudson_3182@gmx.com
X-Original-From: "Rob Hudson" <rob_hudson_3182@gmx.com>
Reply-To: "Rob Hudson" <rob_hudson_3182@gmx.com>
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

I can actually use both expressions. Sometimes i get files that have underscores and spaces together in the same file name lol.

----- Original Message -----
From: Joel Roth <joelz@pobox.com>
To: blinux-list@redhat.com
Date: Tue, 21 Nov 2023 09:44:52 -1000
Subject: Re: Regex for spaces

> Oh, the regex I provide doesn't handle the case
> of filenames containing spaces.
>
> That's why my pay grade is so low (zero, actually :-)
>
> Try this:
>
> -p '^\s*(.+?)\s*$' -r '$1'
>
> (.+?) means capture one or more characters but stop where the next
> expression matches (non-greedy).
>
>
> On Tue, Nov 21, 2023 at 08:27:32AM -1000, Joel Roth wrote:
> > Glad to, Rob!
> >
> > -p '^\s*(\S+)\s*$' -r '$1'
>
> > ^ anchor to beginning of string
> > \s* zero or more space characters
> > (\S+) one or more non-space characters, parentheses capture this as $1
> > $ anchor to end of string
> >
> > be sure to use the -d option first to make sure you're
> > getting what you want. I didn't test this.
> >
> > The classic 'rename' perl script is almost the same,
> > but does not recurse through directories for you (you'd have
> > to use 'find' for that'). The search and replace expressions
> > are separated by slashes. '-n' is for simulate only.
> >
> > rename -n 's/^\s*(\S+)\s*$/$1/' [filenames here]
> >
> > Have fun!
> >
> > On Tue, Nov 21, 2023 at 09:34:45AM -0600, 'Rob Hudson' via blinux-list@redhat.com wrote:
> > > I am not good with regexes at all. They give me a headache lol. Can anyone supply me a regex that will remove any trailing spaces in front or at the end of a file name? I use the program brename:
> > > https://github.com/shenwei356/brename/
> > > I have a regex to remove double spaces, but now I need one that will knock off leading and trailing.
> > > Thanks for any help.
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> > >
> >
> > --
> > Joel Roth
> >
> > --
> > You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
> >
>
> --
> Joel Roth
>
> --
> You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.
>
>

-- 
You received this message because you are subscribed to the Google Groups "blinux-list@redhat.com" group.
To unsubscribe from this group and stop receiving emails from it, send an email to blinux-list+unsubscribe@redhat.com.

